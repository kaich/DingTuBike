namespace :db do
  desc "Erase and fill database"
    task :populate => :environment do 
    require 'faker'

    # Create 15 posts
    15.times do
      Bike.create do |bike|
        bike.name = Faker::Name.name # all options available below
        bike.brand = Faker::Company.name
        bike.model = Faker::Hacker.abbreviation
        bike.made_address = Faker::Address.street_address
        bike.market_time = Time.now.strftime("%d/%m/%Y %H:%M")
        bike.price = Faker::Commerce.price
        bike.information = "Faker::Lorem.paragraph"
      end
    end
  end
end
