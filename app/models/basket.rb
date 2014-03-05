class Basket < ActiveRecord::Base
  has_many :basket_fruits, inverse_of: :basket
  has_many :fruits, through: :basket_fruits
  
  has_many :apples, through: :basket_fruits, source: :fruit, class_name: 'Apple'
  has_many :oranges, through: :basket_fruits, source: :fruit, class_name: 'Orange'
  has_many :bananas, through: :basket_fruits, source: :fruit, class_name: 'Banana'
end
