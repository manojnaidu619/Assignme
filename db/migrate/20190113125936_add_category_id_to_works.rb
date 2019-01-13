class AddCategoryIdToWorks < ActiveRecord::Migration[5.2]
  def change
    add_column :works, :category_id, :integer
  end
end
