class CreateLibris < ActiveRecord::Migration
  def change
    create_table :libris do |t|
      t.string :titolo
      t.float :prezzo

      t.timestamps null: false
    end
  end
end
