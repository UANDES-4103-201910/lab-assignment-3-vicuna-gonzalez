class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :number
      t.references :user

      t.timestamps null: false
    end
  end
end
