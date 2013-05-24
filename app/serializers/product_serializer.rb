class ProductSerializer < ActiveModel::Serializer
  attributes :id, :description, :name, :price_cents, :taxable, :upc_code
  attribute :short_description
  has_many :line_items

   def short_description
     (description[0..40] + "...") if description
   end
end

# attributes :id, :name, :description, :price_cents, :category, :upc_code, :image
#  attribute :short_description

#  def short_description
#    (description[0..40] + "...") if description
#  end
