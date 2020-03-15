class CreateMotherMilks < ActiveRecord::Migration[5.2]
  def change
    create_table :mother_milks do |t|
      t.integer :baby_id
      t.text :body

      t.timestamps
    end
  end
end
