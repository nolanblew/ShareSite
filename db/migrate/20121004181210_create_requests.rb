class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.integer :item_id
      t.string :item_description
      t.boolean :is_accepted
      t.boolean :is_lended
      t.datetime :date_requested
      t.datetime :date_wanted_back

      t.timestamps
    end
  end
end
