class DocumentSerializer < ActiveModel::Serializer
  attributes :id, :type, :photo
  has_one :user
end
