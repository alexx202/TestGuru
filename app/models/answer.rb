class Answer < ApplicationRecord
  belongs_to :question

  validates :body, presence: true
  validate :validate_number_of_answers

  scope :select_true_answers, -> { where(correct: true) }

  private

  def validate_number_of_answers
    errors.add(:number_of_answers, "Question must contaion from 1 to 4 answers") if question.answers.count > 4
  end
end
