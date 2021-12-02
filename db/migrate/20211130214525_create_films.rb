class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.references :director, foreign_key: true
      t.string :name
      t.integer :rt_rank
      t.boolean :nominated

      t.timestamps null: false
    end
  end
end
