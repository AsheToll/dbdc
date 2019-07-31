class AddFavoriteColumnToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :favorite, :boolean, default: false
  end
end
