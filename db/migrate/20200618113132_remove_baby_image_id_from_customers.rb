class RemoveBabyImageIdFromCustomers < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :baby_image_id, :string
  end
end
