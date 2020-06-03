class RemoveBabyImageIdFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :baby_image_id, :integer
  end
end
