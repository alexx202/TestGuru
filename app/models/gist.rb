class Gist < ApplicationRecord
  belongs_to :user
  belongs_to :question

  validates :user, presence: true
  validates :question, presence: true
  validates :url, presence: true
end
