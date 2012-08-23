class ProductSerializer < ActiveModel::Serializer
  attributes :id, :price, :name, :description

  def attributes
    hash = super
    hash["picture_url"] = object.picture.try(:picture_url, :medium_plus)
    hash
  end

  has_many :pictures
end
