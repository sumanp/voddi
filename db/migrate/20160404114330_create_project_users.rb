class CreateProjectUsers < ActiveRecord::Migration
  def change
    create_table :project_users do |t|
      t.integer :user_id, null: false
      t.integer :project_id, null: false
      t.timestamps null: false
    end

    add_index :project_users, :user_id
    add_index :project_users, :project_id
  end
end
