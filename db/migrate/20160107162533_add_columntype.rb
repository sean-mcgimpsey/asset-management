class AddColumntype < ActiveRecord::Migration
  def change
    add_column :assets, :typeofasset, :string
  end
end
