class AddBabyImageIdToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :baby_image_id, :string
  end
end
