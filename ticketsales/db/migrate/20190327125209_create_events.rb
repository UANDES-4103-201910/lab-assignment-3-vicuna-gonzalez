class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.datetime :startdate
      t.integer :eventvenue_id

      t.timestamps null: false
    end
  end
end
