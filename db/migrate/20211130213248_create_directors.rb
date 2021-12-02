class CreateDirectors < ActiveRecord::Migration[5.2]
  def change
    create_table :directors do |t|
      t.string :name
      t.integer :imdb_rank
      t.boolean :tv_credit

      t.timestamps null: false
    end
  end
end
