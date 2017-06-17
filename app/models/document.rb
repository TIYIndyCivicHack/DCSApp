class Document < ApplicationRecord

  default_scope {order(created_at: :asc) }

  belongs_to :user

  mount_uploader :photo, DocumentUploader
  
end
