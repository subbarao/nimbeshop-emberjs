class NavigationSerializer < ActiveModel::Serializer
  attributes :id
  has_one :product_group
end
