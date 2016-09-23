namespace :db do  
  desc "Run a task on a remote server."  
  # run like: cap staging rake:invoke task=a_certain_task  
  task :invoke do  
    on roles(:all) do |host|
      within(current_path) do 
        with rails_env: :production do
          execute :rake, "db:#{ENV['task']}","RAILS_ENV=production"
        end
      end
    end 
  end  

end
