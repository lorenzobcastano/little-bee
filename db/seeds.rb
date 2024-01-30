# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
candle1 = Product.create( name: 'Soothing Lavender Candle', price: 15.99, description: 'Relaxing lavender scent for a peaceful ambiance')
file1 = URI.open("https://i.etsystatic.com/21554180/r/il/811d84/5003663132/il_570xN.5003663132_7m97.jpg")
candle1.photo.attach(io: file1, filename: "candle1.png", content_type: "image/png")
candle1.save

candle2 = Product.create(name: 'Warm Vanilla Candle', price: 12.99, description: 'Sweet vanilla fragrance to create a cozy atmosphere')
file2 = URI.open("https://m.media-amazon.com/images/I/81rHCjyQoNL._AC_UF894,1000_QL80_.jpg")
candle2.photo.attach(io: file2, filename: "candle2.png", content_type: "image/png")
candle2.save

candle3 = Product.create(name: 'Eucalyptus Mint Candle', price: 18.99, description: 'Invigorating eucalyptus and mint blend for a refreshing environment')
file3 = URI.open("https://cdn.shoplightspeed.com/shops/619881/files/50562051/1500x4000x3/edge-of-the-earth-wood-wick-candles.jpg")
candle3.photo.attach(io: file3, filename: "candle3.png", content_type: "image/png")
candle3.save

candle4 = Product.create(name: 'Coconut Lime Candle', price: 14.99, description: 'Tropical coconut and lime fusion for a beachy vibe')
file4 = URI.open("https://m.media-amazon.com/images/I/61NLY6jP6mL._AC_UF1000,1000_QL80_.jpg")
candle4.photo.attach(io: file4, filename: "candle4.png", content_type: "image/png")
candle4.save

candle5 = Product.create(name: 'Cinnamon Spice Candle', price: 16.99, description: 'Warm cinnamon and spice for a cozy and inviting feel')
file5 = URI.open("https://i.etsystatic.com/27674063/r/il/b1dcfd/4283700499/il_570xN.4283700499_6m77.jpg")
candle5.photo.attach(io: file5, filename: "candle5.png", content_type: "image/png")
candle5.save

candle6 =  Product.create(name: 'Ocean Breeze Candle', price: 20.99, description: 'Crisp ocean breeze scent to bring the seaside indoors')
file6 = URI.open("https://i.etsystatic.com/21554180/r/il/36549f/3702144998/il_570xN.3702144998_m2vc.jpg")
candle6.photo.attach(io: file6, filename: "candle6.png", content_type: "image/png")
candle6.save

candle7 = Product.create(name: 'Citrus Burst Candle', price: 13.99, description: 'Zesty citrus burst to uplift your mood and space')
file7 = URI.open("https://m.media-amazon.com/images/I/71sGuj9QGAL._AC_UF1000,1000_QL80_.jpg")
candle7.photo.attach(io: file7, filename: "candle7.png", content_type: "image/png")
candle7.save

candle8 = Product.create(name: 'Sandalwood Serenity Candle', price: 17.99, description: 'Soothing sandalwood aroma for a calming atmosphere')
file8 = URI.open("https://tofinosoapcompany.com/cdn/shop/products/lavenderscentedcandlemadeincanada.png?v=1699223499&width=1445")
candle8.photo.attach(io: file8, filename: "candle8.png", content_type: "image/png")
candle8.save

candle9 = Product.create(name: 'Pumpkin Spice Candle', price: 19.99, description: 'Festive pumpkin spice fragrance for autumn vibes')
file4 = URI.open("https://www.slownorth.com/cdn/shop/files/tuscan-sun-candle-8oz-slow-north-1_800x.png?v=1701752720")
candle9.photo.attach(io: file4, filename: "candle9.png", content_type: "image/png")
candle9.save

candle10 = Product.create(name: 'Fresh Linen Candle', price: 15.99, description: 'Clean and crisp fresh linen scent for a tidy feel')
file10 = URI.open("https://media.cnn.com/api/v1/images/stellar/prod/threshold-candle.jpg?q=h_900,w_1600,x_0,y_0")
candle10.photo.attach(io: file10, filename: "candle10.png", content_type: "image/png")
candle10.save
