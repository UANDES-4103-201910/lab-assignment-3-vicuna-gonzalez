class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :mail
      t.references :user

      t.timestamps null: false
    end
  end
end
