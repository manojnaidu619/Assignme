class AddWorkEndAtToWorks < ActiveRecord::Migration[5.2]
  def change
    add_column :works, :work_end_at, :datetime
  end
end
