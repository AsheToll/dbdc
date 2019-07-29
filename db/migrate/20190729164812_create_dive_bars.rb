class CreateDiveBars < ActiveRecord::Migration[5.2]
  def change
    create_table :dive_bars do |t|
      t.string :name
      t.string :description
      t.integer :neighborhood_id

      t.timestamps
    end
  end
end
