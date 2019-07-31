class RemoveFavoriteFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :favorite, :boolean
  end
end
