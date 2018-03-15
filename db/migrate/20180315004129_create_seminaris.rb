class CreateSeminaris < ActiveRecord::Migration
  def change
    create_table :seminaris do |t|
      t.date :da
      t.date :al
      t.text :luogo
      t.string :nazione
      t.string :titolo
      t.text :descrizione

      t.timestamps null: false
    end
  end
end
