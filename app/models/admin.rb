class Admin < User
  validates :first_name, presence: false
  validates :last_name, presence: false
end
