class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :mail
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
