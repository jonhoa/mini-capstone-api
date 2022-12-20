class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :description, presence: true
  validates :description, length:{in: 10..500}

  belongs_to :supplier
  has_many :images
  has_many :category_products
  has_many :categories, through: :category_products
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

end
