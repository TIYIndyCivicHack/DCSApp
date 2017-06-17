class DocumentSerializer < ActiveModel::Serializer
  attributes :id, :doc_type, :photo_id
  has_one :user
end
