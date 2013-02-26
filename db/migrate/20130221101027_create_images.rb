class CreateImages < ActiveRecord::Migration
  def change
    create_table :image do |t|
      t.integer :bar_id

      t.timestamps
    end
  end
end
