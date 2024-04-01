class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true, length: {minimum: 3}
  validates :annual_revenue, presence: true, numericality: true, inclusion: {in: 0.., message: "cannot be a negative number"}
  validate :must_have_men_or_women_apparel

  def must_have_men_or_women_apparel 
    unless mens_apparel == true || womens_apparel == true
      errors.add(:mens_apparel, "Store must carry at least one of men's or women's apparel")
    end
  end
end



# - Stores must always have a name that is a minimum of 3 characters
# - Stores have an annual_revenue that is a number (integer) that must be 0 or more
# - BONUS: Stores must carry at least one of the men's or women's apparel 
# (hint: use a [custom validation method]
# (http://guides.rubyonrails.org/active_record_validations.html#custom-methods) 
# - **don't** use a `Validator` class)