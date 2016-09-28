namespace :db do
  desc "Erase and fill database"
    task :populate => :environment do 
    require 'faker'

    # Create 15 bikes
    30.times do
      Bike.create do |bike|
        bike.name = Faker::Name.name # all options available below
        bike.brand = Faker::Company.name
        bike.model = Faker::Hacker.abbreviation
        bike.category = ["公路","山地","儿童"][Random.rand(3)]
        bike.material = "铝合金"
        bike.made_address = Faker::Address.street_address
        bike.market_time = Time.now.strftime("%d/%m/%Y %H:%M")
        bike.price = Faker::Commerce.price
        bike.information = Faker::Lorem.paragraphs
        bike.avatars = [File.open(File.join(Rails.root, 'public/circus.png'))]
      end
    end

    #Create 15 activities 
    30.times do 
      Activity.create do |activity|
        activity.name = Faker::Name.name
        activity.start_time = Time.now.strftime("%d/%m/%Y %H:%M")
        activity.end_time = Time.now.strftime("%d/%m/%Y %H:%M")
        activity.rule = Faker::Lorem.sentence
        activity.information = Faker::Lorem.paragraphs
        activity.cover = File.open(File.join(Rails.root, 'public/sports-q-c-1600-500-2.jpg'))
      end
    end

  end
end
