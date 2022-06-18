class User < ApplicationRecord
  has_many :tests_users
  has_many :tests, through: :tests_users
  has_many :created_tests, class_name: 'Test', foreign_key: :author_id

  def tests_by_level(level)
    Test
      .joins('JOIN user_tests ON tests.id = user_tests.test_id')
      .where(level: level)
      .where(user_tests: { user_id: id })
  end
end
