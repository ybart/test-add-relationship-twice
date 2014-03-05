class BasketFruit < ActiveRecord::Base
  belongs_to :basket, inverse_of: :basket_fruits
  belongs_to :fruit, inverse_of: :basket_fruits
  
  validates :basket, :fruit, presence: true
end
