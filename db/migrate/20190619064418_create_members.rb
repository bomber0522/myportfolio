class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name, null: false
      t.string :full_name
      t.string :email
      t.date :birthday
      t.boolean :administrator, null: false, default: false
      
      t.timestamps
    end
  end
end
