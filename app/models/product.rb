class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price_cents, :taxable, :upc_code
  belongs_to :category
  has_many :line_items
end
