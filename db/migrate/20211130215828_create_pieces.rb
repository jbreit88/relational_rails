class CreatePieces < ActiveRecord::Migration[5.2]
  def change
    create_table :pieces do |t|
      t.references :gallery, foreign_key: true
      t.string :name
      t.string :artist
      t.integer :year
      t.boolean :original

      t.timestamps null: false
    end
  end
end
