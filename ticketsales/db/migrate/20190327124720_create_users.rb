class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :password
      t.string :adress

      t.timestamps null: false
    end
  end
end