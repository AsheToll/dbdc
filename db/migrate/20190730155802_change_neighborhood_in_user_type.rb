class ChangeNeighborhoodInUserType < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :neighborhood_id, :integer
  end
end
