class Asset < ActiveRecord::Base

  before_save { |asset| asset.model = asset.model.titleize }
  before_save { |asset| asset.manufactuer = asset.manufactuer.titleize }
  before_save { |asset| asset.assignee = asset.assignee.titleize }


  validates :asset_tag, presence: true, :numericality =>  {:only_integer => true}
  validates :assignee, presence: true, length: {minimum: 3, maximum: 50}
  validates :typeofasset, presence: true, length: {minimum: 3, maximum: 50}
  validates :manufactuer, presence: true, length: {minimum: 3, maximum: 50}
  validates :location_region, presence: true, length: {minimum: 3, maximum: 50}
  validates :location_site, presence: true, length: {minimum: 3, maximum: 50}
end
