class CreateExcretions < ActiveRecord::Migration[5.2]
  def change
    create_table :excretions do |t|
      t.integer :baby_id
      t.text :body
      t.string :image_id
      t.timestamps
    end
  end
end
