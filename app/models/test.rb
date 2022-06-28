class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User'

  has_many :questions, dependent: :destroy
  has_many :tests_users, dependent: :destroy
  has_many :users, through: :tests_users

  validates :title, presence: true
  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 1 },
                    uniqueness: { scope: :title, message: "title and level must be uniq" }

  scope :select_easy_tests, -> { where(level: 0..1) }
  scope :select_medium_tests, -> { where(level: 2..4) }
  scope :select_hard_tests, -> { where(level: 5..Float::INFINITY) }
  scope :category_tests, lambda { |title_of_category|
                           joins(:category).where(categories: { title: title_of_category }).order(title: :desc)
                         }

  def self.titles_tests(title_of_category)
    category_tests(title_of_category).pluck(:title)
  end
end
