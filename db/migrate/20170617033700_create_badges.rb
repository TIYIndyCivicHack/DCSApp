class CreateBadges < ActiveRecord::Migration[5.0]
  def change
    create_table :badges do |t|
      t.references :user, foreign_key: true
      t.string :category
      t.boolean :complete
      t.boolean :unlocked
      t.string :name

      t.timestamps
    end
  end
end
