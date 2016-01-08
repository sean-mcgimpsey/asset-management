class Asset < ActiveRecord::Base
  validates :asset_tag, presence: true, length: {minimum: 3, maximum: 50}
  validates :assignee, presence: true, length: {minimum: 3, maximum: 50}
  validates :typeofasset, presence: true, length: {minimum: 3, maximum: 50}
  validates :manufactuer, presence: true, length: {minimum: 3, maximum: 50}
  validates :location_region, presence: true, length: {minimum: 3, maximum: 50}
  validates :location_site, presence: true, length: {minimum: 3, maximum: 50}
end
