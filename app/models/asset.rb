class Asset < ActiveRecord::Base

  before_save { |asset| asset.model = asset.model.titleize }
  before_save { |asset| asset.manufactuer = asset.manufactuer.titleize }
  before_save { |asset| asset.assignee = asset.assignee.titleize }


  validates :asset_tag, presence: true, uniqueness: true, :numericality =>  {:only_integer => true}, length: {minimum: 8, maximum: 8}
  validates :assignee, presence: true, length: {minimum: 3, maximum: 50}
  validates :typeofasset, presence: true, length: {minimum: 3, maximum: 50}
  validates :manufactuer, presence: true, length: {minimum: 3, maximum: 50}
  validates :location_region, presence: true, length: {minimum: 3, maximum: 50}
  validates :location_site, presence: true, length: {minimum: 3, maximum: 50}
  validates :hostname, presence: true, uniqueness: true, length: {minimum: 3, maximum: 50}

  default_scope { order('asset_tag ASC')}
end
