class CreateAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :admins do |t|
      t.timestamps null: false
      t.string :email, null: false
      t.string :encrypted_password, limit: 128, null: false
      t.string :confirmation_token, limit: 128
      t.string :remember_token, limit: 128, null: false
    end

    add_index :admins, :email
    add_index :admins, :remember_token
  end
end
