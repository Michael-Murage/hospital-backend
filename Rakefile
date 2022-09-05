require_relative './config/environment'
require 'sinatra/activerecord/rake'

desc "Runs a Pry console"
task :console do
  # This line turns on logging of the SQL generated by Active Record
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  
  # Open a Pry session
  Pry.start
end

desc "Start the server"
task :server do
  #enables one to run rake server to start server
  exec "bundle exec rerun -b 'rackup config.ru'"
end

# desc "Start the server"
# task :server do  
#   if ActiveRecord::Base.connection.migration_context.needs_migration?
#     puts "Migrations are pending. Make sure to run `rake db:migrate` first."
#     return
#   end

#   # rackup -p PORT will run on the port specified (9292 by default)
#   ENV["PORT"] ||= "9292"
#   rackup = "rackup -p #{ENV['PORT']}"

#   # rerun allows auto-reloading of server when files are updated
#   # -b runs in the background (include it or binding.pry won't work)
#   exec "bundle exec rerun -b '#{rackup}'"
# end