class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.integer :project_id

      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
