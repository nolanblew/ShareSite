class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.string :specific_location
      t.boolean :is_admin

      t.timestamps
    end
  end
end
