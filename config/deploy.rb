require "bundler/capistrano"

server "gedankenwerk.com", :web, :app, :db, primary: true

set :application, "Fanmeile"
set :user, "tkedeploy"
set :deploy_to, "/home/#{user}/app_#{application}"
set :deploy_via, :remote_cache
set :use_sudo, false

set :scm, "git"
set :repository, "git@github.com:marcelfahle/#{application}.git"
set :branch, "master"

default_run_options[:pty] = true
ssh_options[:forward_agent] = true

after "deploy", "deploy:cleanup" # keep only the last 5 releases

namespace :deploy do
  desc "cause Passenger to initiate a restart"
  task :restart do
    run "touch #{File.join(current_path,'tmp','restart.txt')}"
  end
  
  desc "reload the database with seed data"
  task :seed do
    run "cd #{current_path}; rake db:seed RAILS_ENV=#{rails_env}"
  end

end


after "deploy:update_code", :bundle_install
desc "install the necessary prequesites and create symlinks to assets"
task :bundle_install, :roles => :app do
  run "cd #{release_path} && bundle install"
  run "ln -nfs /home/#{user}/app_#{application}/shared/system/uploads #{release_path}/public/uploads"
  run "ln -nfs /home/#{user}/app_#{application}/shared/system/videos #{release_path}/public/videos"
end
