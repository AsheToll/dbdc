class RemoveDivebarIdFromBarBands < ActiveRecord::Migration[5.2]
  def change
    remove_column :bar_bands, :divebar_id, :integer
  end
end
