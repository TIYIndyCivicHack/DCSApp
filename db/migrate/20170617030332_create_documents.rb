class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.references :user, foreign_key: true
      t.string :type
      t.string :photo

      t.timestamps
    end
  end
end
