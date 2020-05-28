class CreateBabies < ActiveRecord::Migration[5.2]
  def change
    create_table :babies do |t|
      t.integer :customer_id
      t.string :baby_name
      t.integer :sex
      t.date :birth

      t.timestamps
    end
  end
end
