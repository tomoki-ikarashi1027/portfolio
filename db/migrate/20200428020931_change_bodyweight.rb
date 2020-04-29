class ChangeBodyweight < ActiveRecord::Migration[5.2]
  def change
  	remove_column :body_weights, :body, :integer
  	add_column :body_weights, :body, :float
  end
end

