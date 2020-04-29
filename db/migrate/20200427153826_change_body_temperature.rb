class ChangeBodyTemperature < ActiveRecord::Migration[5.2]
  def change
  	remove_column :body_temperatures, :body, :integer
  	add_column :body_temperatures, :body, :float
  end
end
