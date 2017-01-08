class CreateMemos < ActiveRecord::Migration[5.0]
  def change
    create_table :memos do |t|
      t.integer :account_id
      t.string :title
      t.text :body

      t.timestamps
    end
    add_index :memos, :account_id
  end
end
