class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :titel
      t.string :autor
      t.decimal :preis
      t.datetime :erscheinungsjahr
      t.string :beschreibung

      t.timestamps null: false
    end
  end
end
