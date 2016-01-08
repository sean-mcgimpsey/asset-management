class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :assets, :type
  end
end
