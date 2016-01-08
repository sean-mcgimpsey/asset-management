json.array!(@assets) do |asset|
  json.extract! asset, :id, :asset_tag, :typeofasset, :manufactuer, :model, :location_region, :location_site, :assignee, :active
  json.url asset_url(asset, format: :json)
end
