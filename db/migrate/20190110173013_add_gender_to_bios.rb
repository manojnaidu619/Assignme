class AddGenderToBios < ActiveRecord::Migration[5.2]
  def change
    add_column :bios, :gender, :integer, default: 0
  end
end
