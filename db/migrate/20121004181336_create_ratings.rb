class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :requestor_id
      t.integer :requestee_id
      t.integer :requestor_rating
      t.integer :requestee_rating

      t.timestamps
    end
  end
end
