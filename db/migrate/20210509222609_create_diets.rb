class CreateDiets < ActiveRecord::Migration[6.1]
  def change
    create_table :diets do |t|
      t.integer :person_id
      t.datetime :initial_date
      t.datetime :final_date

      t.timestamps
    end
  end
end
