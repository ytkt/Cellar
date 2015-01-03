json.array!(@brands) do |brand|
  json.extract! brand, :id, :name, :vintage, :asin, :jan_code, :temperature_low, :temperature_high, :serving_temperature
  json.url brand_url(brand, format: :json)
end
