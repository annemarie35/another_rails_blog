class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.datetime :created_at
      t.datetime :updated_at
      t.boolean :admin
      t.string :email
      t.string :password_digest
      t.string :reset_password_key

      t.timestamps null: false
    end
  end
end
