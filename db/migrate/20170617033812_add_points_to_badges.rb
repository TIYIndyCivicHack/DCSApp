class AddPointsToBadges < ActiveRecord::Migration[5.0]

  def change
    add_column :badges, :points, :integer
  end

end
