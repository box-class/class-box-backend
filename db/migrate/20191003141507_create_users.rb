class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, id: false do |t|
      t.string :name, null: false
      t.string :email, primary_key: true, null: false
      t.string :password_digest

      t.timestamps
    end
  end
 
end
