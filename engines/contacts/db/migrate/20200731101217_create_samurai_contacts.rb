class CreateSamuraiContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :samurai_contacts_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :email
      t.string :phone
      t.references :user, index: true, foreign_key: :samurai_users

      t.timestamps
    end
  end
end
