json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :wisata_id, :nama, :alamat, :deskripsi, :telp, :harga, :latitude, :longitude, :foto
  json.url restaurant_url(restaurant, format: :json)
end
