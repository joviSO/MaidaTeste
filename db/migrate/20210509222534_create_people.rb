class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.integer :user_id
      t.string :name
      t.string :nickname
      t.string :gender
      t.float :weight
      t.float :height
      t.float :ideal_weight

      t.timestamps
    end
  end
end
