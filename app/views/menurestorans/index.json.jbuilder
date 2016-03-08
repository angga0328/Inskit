json.array!(@menurestorans) do |menurestoran|
  json.extract! menurestoran, :id, :restaurant_id, :nama_menu, :foto
  json.url menurestoran_url(menurestoran, format: :json)
end
