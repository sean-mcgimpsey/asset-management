class ChangePurchasedateToDateType < ActiveRecord::Migration
  def change
    change_column :assets, :purchasedate, :date
  end
end
