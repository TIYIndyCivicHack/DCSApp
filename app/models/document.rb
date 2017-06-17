class Document < ApplicationRecord

  default_scope {order(created_at: :asc) }

  belongs_to :user

  has_many :photos

end
