class CreateBodyTemperatures < ActiveRecord::Migration[5.2]
  def change
    create_table :body_temperatures do |t|
      t.integer :user_id
      t.integer :baby_id
      t.string :body

      t.timestamps
    end
  end
end
