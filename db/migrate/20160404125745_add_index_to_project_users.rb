class AddIndexToProjectUsers < ActiveRecord::Migration
  def change
    add_index :project_users, [:user_id, :project_id], unique: true
  end
end
