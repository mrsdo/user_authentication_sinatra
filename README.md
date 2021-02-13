# Sinatra CMS Application Assessment
View on Wiki</a> (https://github.com/mrsdo/sinatra-cms-app-assessment/wiki)

****

-[x] Add Project Bundler, File Structure and Theme

        -- public, roles controller test

-[x] Add Project MVC (Sessions & Users)

        -- user mvc (login)

-[x] Add Database Migrations & Seeds

       -- rake db:create

       -- rake db:create_migration create_users

       -- rake db:migrate

       -- rake db:seed(db/seeded/create_user)

-[x] git push to Live http://[server_path]:3000


      mrsdo@ps630616 ~/[server_path]/public
      % which passenger config
      /[server_path]/.rvm/gems/ruby-2.7.2/bin/passenger
      config not found
      mrsdo@ps630616 ~/[server_path]/public
      % rvm use 2.7.2
      Using /[server_path]/.rvm/gems/ruby-2.7.2
      
      mrsdo@ps630616 ~/[server_path]/public
      % /[server_path]/.rvm/gems/ruby-2.7.2/bin/passenger-config --ruby-command
      passenger-config was invoked through the following Ruby interpreter:
      Command: /[server_path]/.rvm/wrappers/ruby-2.7.2/ruby
      Version: ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x86_64-linux]
      To use in Apache: PassengerRuby /[server_path]/.rvm/wrappers/ruby-2.7.2/ruby
      To use in Nginx : passenger_ruby /[server_path]/.rvm/wrappers/ruby-2.7.2/ruby
      To use with Standalone: /[server_path]/.rvm/wrappers/ruby-2.7.2/ruby /[server_path]/[server_path]/public/vendor/bundle/ruby/2.7.0/gems/passenger-6.0.7/bin/passenger start
      
      Simple Start
      % bundle exec passenger start --address 127.0.0.1 --port 80



