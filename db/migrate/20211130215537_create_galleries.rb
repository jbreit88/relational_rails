class CreateGalleries < ActiveRecord::Migration[5.2]
  def change
    create_table :galleries do |t|
      t.string :name
      t.boolean :non_profit
      t.float :entry_cost

      t.timestamps null: false
    end
  end
end
