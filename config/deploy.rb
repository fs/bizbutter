set :application, "bizbutter"
set :repository, "git@github.com:fs/#{application}"
set :scm, :git
set :branch, "master"
set :deploy_via, :remote_cache
set :deploy_to, "/var/www/rails/#{application}"
set :use_sudo, false

server "#{application}.flatsourcing.com", :app, :web, :db, :primary => true

namespace :deploy do
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end

  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end
end
