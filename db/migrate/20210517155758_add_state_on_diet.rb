class AddStateOnDiet < ActiveRecord::Migration[6.1]
  def change
    add_column :diets, :status, :boolean
  end
end
