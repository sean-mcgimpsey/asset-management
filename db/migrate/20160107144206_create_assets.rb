class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.integer :asset_tag
      t.string :type
      t.string :manufactuer
      t.string :model
      t.string :location_region
      t.string :location_site
      t.string :assignee
      t.boolean :active

      t.timestamps
    end
  end
end
