class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :project_id
      t.integer :task_num
      t.string :task_name
      t.integer :person_id
      t.integer :pct_time
      t.date :base_start
      t.date :base_finish
      t.date :proj_start
      t.date :proj_finish
      t.integer :task_deps
      t.string :task_status
      t.text :task_notes

      t.timestamps null: false
    end
  end
end
