class ChangeDivebarId < ActiveRecord::Migration[5.2]
  def change
    rename_column :reviews, :divebar_id, :dive_bar_id
  end
end
