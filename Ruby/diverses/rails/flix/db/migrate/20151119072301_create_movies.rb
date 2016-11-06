class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :rating
      t.decimal :total_gross
      t.text :descrption
      t.datetime :release
      t.string :website
      t.datetime :pledging

      t.timestamps null: false
    end
  end
end
