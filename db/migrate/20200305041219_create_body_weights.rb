class CreateBodyWeights < ActiveRecord::Migration[5.2]
  def change
    create_table :body_weights do |t|
      t.integer :user_id
      t.integer :baby_id

      t.timestamps
    end
  end
end
