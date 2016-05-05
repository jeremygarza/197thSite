class CreateSupportContacts < ActiveRecord::Migration
  def change
    create_table :support_contacts do |t|
      t.string :position
      t.string :last_name
      t.string :first_name
      t.string :rank
      t.string :phone

      t.timestamps null: false
    end
  end
end
