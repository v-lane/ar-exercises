require 'securerandom'

class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, presence: true, numericality: true, inclusion: {in: 40..200}
  validates :store_id, presence: true

  before_create :generate_password

  private
  def generate_password
    self.password = SecureRandom.alphanumeric(8)
  end

end


# - Employees must always have a first name present
# - Employees must always have a last name present
# - Employees have a hourly_rate that is a number (integer) between 40 and 200
# - Employees must always have a store that they belong to 
# (can't have an employee that is not assigned a store)

# - Stores must always have a name that is a minimum of 3 characters
# - Stores have an annual_revenue that is a number (integer) that must be 0 or more
# - BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a [custom validation method]
# (http://guides.rubyonrails.org/active_record_validations.html#custom-methods) - **don't** use a `Validator` class)