class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.text :enquiry
      t.timestamps
    end
    add_index :contacts
  end
end
