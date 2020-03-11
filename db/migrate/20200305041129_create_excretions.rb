class CreateExcretions < ActiveRecord::Migration[5.2]
  def change
    create_table :excretions do |t|
      t.integer :customer_id
      t.integer :baby_id
      t.text :body
      t.string :image_id
      t.time :create_time
      t.timestamps
    end
  end
end
