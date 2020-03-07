class CreateSuckles < ActiveRecord::Migration[5.2]
  def change
    create_table :suckles do |t|
      t.integer :user_id
      t.integer :baby_id
      t.integer :mother_milk
      t.integer :milk_powder
      t.string :body

      t.timestamps
    end
  end
end
