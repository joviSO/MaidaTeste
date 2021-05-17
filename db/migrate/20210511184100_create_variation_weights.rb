class CreateVariationWeights < ActiveRecord::Migration[6.1]
  def change
    create_table :variation_weights do |t|
      t.integer :weight
      t.datetime :date

      t.timestamps
    end
  end
end
