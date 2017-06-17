class RemovePhotosFromDocumentsAddPhotoId < ActiveRecord::Migration[5.0]
  def change
    remove_column :documents, :photo
    add_column :documents, :photo_id, :integer
    add_foreign_key :documents, :photos
  end
end
