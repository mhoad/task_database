class AddCategoryIdToTasks < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.integer :category_id
    end
  end
end
