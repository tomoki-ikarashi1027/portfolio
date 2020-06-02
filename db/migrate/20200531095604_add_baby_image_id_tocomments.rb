class AddBabyImageIdTocomments < ActiveRecord::Migration[5.2]
  def change
  	add_column :comments, :baby_image_id, :integer
  end
end
