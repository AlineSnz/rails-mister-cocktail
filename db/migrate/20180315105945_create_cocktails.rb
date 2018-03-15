class CreateCocktails < ActiveRecord::Migration[5.1]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.integer :dose
      t.string :ingredients

      t.timestamps
    end
  end
end
