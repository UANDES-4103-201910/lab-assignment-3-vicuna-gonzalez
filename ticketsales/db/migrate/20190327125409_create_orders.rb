class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :amount
      t.references :ticket
      t.references :user

      t.timestamps null: false
    end
  end
end
