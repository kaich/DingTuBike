# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


    30.times do
      p "generate bike"
      Bike.create do |bike|
        bike.name = "Children Bike" # all options available below
        bike.brand = "YongJiu"
        bike.model = "AC16729"
        bike.made_address = "Shenzhen Guangdong China"
        bike.market_time = "2012-05-07 11:12"
        bike.price = "542"
        bike.information = "This is an option that the capistrano-bundler gem uses. Bundler has a command line option called –deployment, which Capistrano uses by default. Instead of installing your gems in a common location for all apps, it localizes your gems and installs them inside the vendor directory of your Rails app. This is wonderful as it speeds up loading and isolates your application’s gems from other environments. It’s similar in concept to the RVM’s Gemsets. Unfortunately, it leads to a nasty problem for Windows users"
        p "bike avatar: #{File.join(current_path, 'public/circus.png')}"
        bike.avatars = [File.open(File.join(current_path, 'public/circus.png'))]
      end
    end

    #Create 15 activities
    30.times do 
      p "generate activity"
      Activity.create do |activity|
        activity.name = "XiaoGan DingTu Ride"
        activity.start_time = "2012-05-07 11:12"
        activity.end_time = "2012-05-07 11:12"
        activity.rule = "This can be anything you want and it is mostly used for display purposes. We tend to use the URL of the application so the URL doesn’t have to hard coded in other places"
        activity.information = "This is an option that the capistrano-bundler gem uses. Bundler has a command line option called –deployment, which Capistrano uses by default. Instead of installing your gems in a common location for all apps, it localizes your gems and installs them inside the vendor directory of your Rails app. This is wonderful as it speeds up loading and isolates your application’s gems from other environments. It’s similar in concept to the RVM’s Gemsets. Unfortunately, it leads to a nasty problem for Windows users"
        activity.cover = File.open(File.join(current_path, 'public/sports-q-c-1600-500-2.jpg'))
      end
    end
