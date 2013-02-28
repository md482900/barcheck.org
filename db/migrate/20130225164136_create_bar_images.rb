class CreateBarImages < ActiveRecord::Migration
  def change
    create_table :bar_images do |t|
      t.string :caption
      t.integer :bar_id

      t.timestamps
    end
  end
end
