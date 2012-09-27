$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) # Add RVM's lib directory to the load path.
require "rvm/capistrano"                  # Load RVM's capistrano plugin.
set :rvm_ruby_string, 'ruby-1.9.3-p125'        # Or whatever env you want it to run in.

set :repository,  "git@github.com:hom/handson_poker.git"
set :branch, 'test13'

set :deploy_to,   "/var/www/html/#{application}"
set :user, "deploy"

role :app, "67.214.211.75"
role :web, "67.214.211.75"
role :db,  "67.214.211.75", :primary => true

set :rails_env, "staging"
