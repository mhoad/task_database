class AddCategoryIdToTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :category_id
    end
  end
end
