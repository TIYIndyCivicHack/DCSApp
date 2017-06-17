class BadgeSerializer < ActiveModel::Serializer
  attributes :id, :category, :complete, :unlocked, :name, :points, :description
  has_one :user
end
