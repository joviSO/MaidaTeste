class AddUserPersonToVariationWeights < ActiveRecord::Migration[6.1]
  def change
    add_column :variation_weights, :person_id, :bigint
  end
end
