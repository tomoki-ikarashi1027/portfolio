class CreateBodyTemperatures < ActiveRecord::Migration[5.2]
  def change
    create_table :body_temperatures do |t|
      t.integer :baby_id
      t.integer :body
      t.timestamps
    end
  end
end
