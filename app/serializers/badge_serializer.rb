class BadgeSerializer < ActiveModel::Serializer
  attributes :id, :category, :complete, :unlocked, :name
  has_one :user
end
