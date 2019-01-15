class AddLongitudeToBios < ActiveRecord::Migration[5.2]
  def change
    add_column :bios, :longitude, :float
  end
end
