namespace :db do
  desc "create  admin in database"
  task :create_admin => :environment do 
    User.create!({:email => "admin@gmail.com", :admin => true, :password => "111111", :password_confirmation => "111111", :nick => "admin" }) 
  end
end
