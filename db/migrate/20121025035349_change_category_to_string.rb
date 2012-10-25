class ChangeCategoryToString < ActiveRecord::Migration
  change_table :items do |t|
	t.remove :category_id
	t.string :category
  end
end
