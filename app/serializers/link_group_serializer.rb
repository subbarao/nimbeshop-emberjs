class LinkGroupSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :navigations
end
