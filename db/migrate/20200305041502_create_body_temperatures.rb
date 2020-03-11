class CreateBodyTemperatures < ActiveRecord::Migration[5.2]
  def change
    create_table :body_temperatures do |t|
      t.integer :customer_id
      t.integer :baby_id
      t.integer :body
      t.time :create_time
      t.timestamps
    end
  end
end
