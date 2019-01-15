class AddLatitudeToBios < ActiveRecord::Migration[5.2]
  def change
    add_column :bios, :latitude, :float
  end
end
