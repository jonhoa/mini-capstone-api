class Category < ApplicationRecord
  has_many :category_products
  has_many :products, through: :category_products

  def products
    #return product associated with category
    #returns all the products associated with that category




  end
  
end
