class Employee < ActiveRecord::Base
  validates :first_name, :last_name, :middle_name, :date_of_birth, :presence => true
  validates :email, :presence => true, :uniqueness => true

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end

end
