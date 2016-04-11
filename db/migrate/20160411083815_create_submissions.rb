class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :name, null: false
      t.text :body, null: false
      t.references :activity , index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
