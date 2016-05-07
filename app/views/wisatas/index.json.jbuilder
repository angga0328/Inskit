json.array!(@wisatas) do |wisata|
  json.extract! wisata, :id, :nama, :alamat, :deskripsi, :daerah_id, :kategori_id, :telp
  json.url wisata_url(wisata, format: :json)
end
