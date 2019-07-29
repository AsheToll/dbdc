class AddDiveBarIdToBarBands < ActiveRecord::Migration[5.2]
  def change
    add_column :bar_bands, :dive_bar_id, :integer
  end
end
