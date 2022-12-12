class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :description, presence: true
  validates :description, length:{in: 10..500}
end
