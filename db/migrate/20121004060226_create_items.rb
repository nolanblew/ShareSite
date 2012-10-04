class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.int :user_id
      t.string :name
      t.string :description
      t.string :condition
      t.id :category_id

      t.timestamps
    end
  end
end
