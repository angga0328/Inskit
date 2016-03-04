json.array!(@albumfotorestorans) do |albumfotorestoran|
  json.extract! albumfotorestoran, :id, :restaurant_id, :foto
  json.url albumfotorestoran_url(albumfotorestoran, format: :json)
end
