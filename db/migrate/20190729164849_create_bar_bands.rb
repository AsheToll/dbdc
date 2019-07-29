class CreateBarBands < ActiveRecord::Migration[5.2]
  def change
    create_table :bar_bands do |t|
      t.integer :divebar_id
      t.integer :band_id

      t.timestamps
    end
  end
end
