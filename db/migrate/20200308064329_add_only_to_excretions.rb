class AddOnlyToExcretions < ActiveRecord::Migration[5.2]
  def change
    add_column :excretions, :only, :integer
  end
end
