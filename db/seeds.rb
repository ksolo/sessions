require 'faker'

10.times do
  Product.create(name: Faker::Lorem.words(3).join(' '), description: Faker::Lorem.paragraph, price: rand(1000))
end