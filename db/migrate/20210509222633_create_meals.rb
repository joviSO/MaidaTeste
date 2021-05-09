class CreateMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.integer :diet_id
      t.string :meal_kind
      t.text :description

      t.timestamps
    end
  end
end
