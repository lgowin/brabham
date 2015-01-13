class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :product_line
      t.string :program_name
      t.string :project_phase
      t.boolean :sponsor
      t.string :owner
      t.string :proj_status
      t.text :proj_notes

      t.timestamps null: false
    end
  end
end
