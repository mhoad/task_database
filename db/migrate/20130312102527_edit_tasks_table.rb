class EditTasksTable < ActiveRecord::Migration
  def up
    change_table :tasks do |t|
      t.remove :time_taken
      t.integer :estimated_time
    end
  end

  def down
    change_table :tasks do |t|
      t.time :time_taken
      t.remove :estimated_time
    end
  end
end
