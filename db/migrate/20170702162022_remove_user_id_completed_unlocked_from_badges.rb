class RemoveUserIdCompletedUnlockedFromBadges < ActiveRecord::Migration[5.0]
  def change
    remove_column :badges, :user_id
    remove_column :badges, :complete
    remove_column :badges, :unlocked
  end
end
