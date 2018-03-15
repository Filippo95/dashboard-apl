class CreateAttivita < ActiveRecord::Migration
  def change
    create_table :attivita do |t|
      t.date :data
      t.string :titolo
      t.text :luogo
      t.text :descrizione

      t.timestamps null: false
    end
  end
end
