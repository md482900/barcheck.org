class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.string :user_name
      t.integer :bar_id
      t.integer :user_id

      t.timestamps
    end
  end
end
