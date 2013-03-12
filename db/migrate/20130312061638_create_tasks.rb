class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :free
      t.boolean :paid
      t.integer :impact_score
      t.integer :doability_score
      t.time :time_taken
      t.boolean :reqruires_developer
      t.boolean :requires_client
      t.integer :risk_score
      t.decimal :total_score

      t.timestamps
    end
  end
end
