json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :wisata_id, :nama, :alamat, :deskripsi, :telp, :harga, :latitude, :longitude, :foto
  json.url hotel_url(hotel, format: :json)
end
