class RenamePhotoToImageInPhotos < ActiveRecord::Migration[5.0]
  def change
    rename_column :photos, :photo, :image
  end
end
