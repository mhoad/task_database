class AddDescriptionToTasks < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.text :description
    end
  end
end
