class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :login_id, null: false
      t.timestamps
    end
    add_index :accounts, :login_id, unique: true
  end
end
