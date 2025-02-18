# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#
product_name = "Pantalon"
price = [35.50,  49.99, 68.90, 89.90, 99.00]
urls = %w[
https://res.cloudinary.com/wusinho1/image/upload/v1729288091/Cocotera/d3suyx3amzpqkaqxettz.jpg
https://res.cloudinary.com/wusinho1/image/upload/v1729288090/Cocotera/fzp8oxfqwtaxbluzh52f.jpg
https://res.cloudinary.com/wusinho1/image/upload/v1729288090/Cocotera/n5dydn0iqcvnizemjvb8.jpg
https://res.cloudinary.com/wusinho1/image/upload/v1729288090/Cocotera/iepxtojxsocw9bjvnplm.jpg
https://res.cloudinary.com/wusinho1/image/upload/v1729288089/Cocotera/wlu8dogf4sc05jbm97aw.jpg
https://res.cloudinary.com/wusinho1/image/upload/v1729288089/Cocotera/b9b4hqpkhgnk8cgffqfm.jpg
https://res.cloudinary.com/wusinho1/image/upload/v1729288089/Cocotera/ydjvxdi1ucdcb60psjcd.jpg
]

urls.each do | url|
  Product.create(url: url, price: price.sample, name: product_name)
end

