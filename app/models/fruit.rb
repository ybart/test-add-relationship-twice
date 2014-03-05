class Fruit < ActiveRecord::Base
  has_many :basket_fruits, inverse_of: :fruit
  has_many :baskets, through: :basket_fruits

  validates :type, presence: true, inclusion: ['Apple', 'Banana', 'Orange']
  
  validates :baskets, presence: true
end
