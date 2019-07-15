class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.float :balance, :default => 5000

      t.timestamps
    end
  end
end
