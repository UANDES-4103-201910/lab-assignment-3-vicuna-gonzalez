class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :price
      t.string :category
      t.references :event

      t.timestamps null: false
    end
  end
end
