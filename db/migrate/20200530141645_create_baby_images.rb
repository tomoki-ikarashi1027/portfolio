class CreateBabyImages < ActiveRecord::Migration[5.2]
  def change
    create_table :baby_images do |t|
      t.string :baby_image_id
      t.text :body
      t.integer :customer_id

      t.timestamps
    end
  end
end
