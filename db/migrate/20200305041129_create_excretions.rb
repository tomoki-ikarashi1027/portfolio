class CreateExcretions < ActiveRecord::Migration[5.2]
  def change
    create_table :excretions do |t|
      t.integer :user_id
      t.integer :baby_id
      t.text :shit
      t.text :urine
      t.text :shit_urine
      t.string :image_id

      t.timestamps
    end
  end
end
