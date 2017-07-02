class AddUnlockedCompleteToMemberships < ActiveRecord::Migration[5.0]
  def change
    add_column :memberships, :unlocked, :boolean
    add_column :memberships, :complete, :boolean
  end
end
