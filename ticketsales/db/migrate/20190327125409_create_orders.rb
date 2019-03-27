class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :amount
      t.integer :ticket_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
