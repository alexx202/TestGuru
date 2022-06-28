class Answer < ApplicationRecord
  belongs_to :question

  validates :body, presence: true
  validate :validate_number_of_answers, on: :create

  scope :correct, -> { where(correct: true) }

  private

  def validate_number_of_answers
    errors.add(:number_of_answers, "Question must contain from 1 to 4 answers") if question.answers.count >= 4
  end
end
