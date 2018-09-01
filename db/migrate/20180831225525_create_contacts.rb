class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :last_name
      t.string :first_name
      t.string :address
      t.string :company
      t.string :phone
      t.string :email
      t.text :notes

      t.timestamps
    end
  end
end
