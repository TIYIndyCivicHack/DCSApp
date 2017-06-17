class AddBadgesToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :earned_badges, :integer, array: true
  end
end
