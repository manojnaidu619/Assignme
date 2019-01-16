class AddCityToBios < ActiveRecord::Migration[5.2]
  def change
    add_column :bios, :city, :string
  end
end
