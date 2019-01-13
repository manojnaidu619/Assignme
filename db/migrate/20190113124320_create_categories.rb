class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.references :work, foreign_key: true

      t.timestamps
    end
  end
end
