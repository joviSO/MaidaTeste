class ChangePriorityOnRelationUserPerson < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :person_id, :bigint
    remove_column :people, :user_id
  end
end
