require "bundler/capistrano"
require "capistrano_colors"

#set :database, "mysql"
set :database, "postgresql"


load "config/recipes/base"
load "config/recipes/nginx"
load "config/recipes/unicorn"
load "config/recipes/#{database}"
load "config/recipes/nodejs"
load "config/recipes/rbenv"
load "config/recipes/check"

server "173.246.40.14", :web, :app, :db, primary: true

set :root_user, "root"
set :user, "ruby"
set :application, "rails_base"
set :deploy_to, "/home/#{user}/apps/#{application}"
set :deploy_via, :remote_cache
set :use_sudo, false

set :scm, "git"
set :repository, "git@github.com:ernane/#{application}.git"
set :branch, "master"

default_run_options[:pty] = true
ssh_options[:forward_agent] = true

after "deploy", "deploy:cleanup" # keep only the last 5 releases
