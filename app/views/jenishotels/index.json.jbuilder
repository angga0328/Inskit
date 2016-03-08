json.array!(@jenishotels) do |jenishotel|
  json.extract! jenishotel, :id, :hotel_id, :jenis_kamar, :foto
  json.url jenishotel_url(jenishotel, format: :json)
end
