class CreateMilkPowders < ActiveRecord::Migration[5.2]
  def change
    create_table :milk_powders do |t|
      t.integer :baby_id
      t.integer :customer_id
      t.text :body

      t.timestamps
    end
  end
end
