class Answer < ApplicationRecord
  belongs_to :question

  scope :select_true_answers, -> { where(correct: true) }

end
