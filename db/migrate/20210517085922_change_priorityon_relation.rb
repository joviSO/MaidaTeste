class ChangePriorityonRelation < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :user_id, :bigint
    remove_column :users, :person_id
  end
end
