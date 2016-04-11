class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.boolean :done
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
