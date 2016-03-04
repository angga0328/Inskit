json.array!(@albumfotohotels) do |albumfotohotel|
  json.extract! albumfotohotel, :id, :hotel_id, :foto
  json.url albumfotohotel_url(albumfotohotel, format: :json)
end
