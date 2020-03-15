class CreateProblems < ActiveRecord::Migration[5.2]
  def change
    create_table :problems do |t|
      t.integer :customer_id
      t.integer :category_id
      t.text :body

      t.timestamps
    end
  end
end
