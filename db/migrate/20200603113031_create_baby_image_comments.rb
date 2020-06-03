class CreateBabyImageComments < ActiveRecord::Migration[5.2]
  def change
    create_table :baby_image_comments do |t|
      t.integer :customer_id
      t.integer :baby_image_id
      t.text :body

      t.timestamps
    end
  end
end
