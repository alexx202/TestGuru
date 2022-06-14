class Test < ApplicationRecord

  def self.titles_tests(category)
    Test.where(category_id: Category.find_by!(title: category).id).order(title: :desc).pluck(:title)
  end

end
