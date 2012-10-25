class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :user_id
      t.string :name
      t.string :description
      t.string :condition
      t.string :category

      t.timestamps
    end
  end
end
