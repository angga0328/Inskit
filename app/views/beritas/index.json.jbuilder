json.array!(@beritas) do |berita|
  json.extract! berita, :id, :title, :content, :foto
  json.url berita_url(berita, format: :json)
end
