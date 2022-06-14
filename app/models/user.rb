class User < ApplicationRecord

  def tests_by_level(level)
    Test.where(level: level).joins('JOIN user_tests ON tests.id = user_tests.test_id').where(user_tests: { user_id: id })
  end

end
