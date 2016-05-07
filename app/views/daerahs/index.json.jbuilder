json.array!(@daerahs) do |daerah|
  json.extract! daerah, :id, :nama, :foto
  json.url daerah_url(daerah, format: :json)
end
