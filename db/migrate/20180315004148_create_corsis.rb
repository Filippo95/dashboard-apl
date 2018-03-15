class CreateCorsis < ActiveRecord::Migration
  def change
    create_table :corsis do |t|
      t.date :data
      t.text :luogo
      t.string :titolo
      t.text :contatto
      t.text :descrizione

      t.timestamps null: false
    end
  end
end
