class RenameUserTestToTestsUser < ActiveRecord::Migration[6.1]
  def change
    rename_table :user_tests, :tests_users
  end
end
