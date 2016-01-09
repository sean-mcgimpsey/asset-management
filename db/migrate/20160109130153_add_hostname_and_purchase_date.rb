class AddHostnameAndPurchaseDate < ActiveRecord::Migration
  def change
    add_column :assets, :hostname, :string
    add_column :assets, :purchasedate, :integer
  end
end
