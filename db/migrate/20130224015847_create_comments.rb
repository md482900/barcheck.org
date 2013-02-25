class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :bar_id
      t.string :user_name
      t.text :text

      t.timestamps
    end
  end
end
