class Photo < ActiveRecord::Base
  belongs_to :document

  mount_uploader :image, PhotoUploader

end
