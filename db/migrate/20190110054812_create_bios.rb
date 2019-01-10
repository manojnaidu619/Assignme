class CreateBios < ActiveRecord::Migration[5.2]
  def change
    create_table :bios do |t|
      t.string :fullname
      t.string :username
      t.string :locality
      t.integer :occupation
      t.integer :contact_number
      t.string :college_school_name
      t.datetime :dob

      t.timestamps
    end
  end
end
