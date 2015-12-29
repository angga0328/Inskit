# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Daerah.create!(nama: "Bandung")
Daerah.create!(nama: "Bandung Barat")
Daerah.create!(nama: "Bekasi")
Daerah.create!(nama: "Bogor")
Daerah.create!(nama: "Cianjur")
Daerah.create!(nama: "Cirebon")
Daerah.create!(nama: "Ciamis")
Daerah.create!(nama: "Karawang")
Daerah.create!(nama: "Garut")
Daerah.create!(nama: "Indramayu")
Daerah.create!(nama: "Kuningan")
Daerah.create!(nama: "Majalengka")
Daerah.create!(nama: "Purwakarta")
Daerah.create!(nama: "Banjar")
Daerah.create!(nama: "Cimahi")
Daerah.create!(nama: "Subang")
Daerah.create!(nama: "Sukabumi")
Daerah.create!(nama: "Sumedang")

Kategori.create!(nama: "Alam")
Kategori.create!(nama: "Hiburan")
Kategori.create!(nama: "Budaya")
Kategori.create!(nama: "Edukasi")
Kategori.create!(nama: "Religi")

User.create!(nama: "buncis", email: "buncis@buncis.com", password: "buncis10", password_confirmation: "buncis10")
Guide.create!(nama: "anto", email: "guide@buncis.com", password: "buncis10", password_confirmation: "buncis10")
Wisata.create!(nama: "trans studio", daerah_id: 1, kategori_id: 1)
