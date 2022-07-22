class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: :author_id

  has_many :questions, dependent: :destroy
  has_many :test_passages, dependent: :destroy
  has_many :users, through: :test_passages

  validates :title, presence: true
  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 1 },
                    uniqueness: { scope: :title, message: "title and level must be uniq" }

  scope :easy, -> { where(level: 0..1) }
  scope :medium, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }
  scope :with_category, lambda { |title_of_category|
                          joins(:category).where(categories: { title: title_of_category }).order(title: :desc)
                        }

  def self.titles_tests(title_of_category)
    with_category(title_of_category).pluck(:title)
  end
end
