class AddDescriptionToBands < ActiveRecord::Migration[5.2]
  def change
    add_column :bands, :description, :text
  end
end
