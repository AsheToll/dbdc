class AddPictureToDiveBars < ActiveRecord::Migration[5.2]
  def change
    add_column :dive_bars, :picture, :string
  end
end
