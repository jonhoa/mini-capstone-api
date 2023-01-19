class Order < ApplicationRecord
  has_many :users
  belongs_to :carted_products

end
