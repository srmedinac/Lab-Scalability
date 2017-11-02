class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :userid
      t.string :firstname
      t.string :lastname
      t.string :email

      t.timestamps
    end
  end
end
