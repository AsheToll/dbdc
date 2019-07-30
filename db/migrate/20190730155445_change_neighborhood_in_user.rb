class ChangeNeighborhoodInUser < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :neighborhood, :neighborhood_id
  end
end
