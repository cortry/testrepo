=begin
set :default_environment, {
  'PATH'         => "/usr/local/rvm/gems/ruby-1.8.7-p302/bin:/usr/local/rvm/gems/ruby-1.8.7-p302@global/bin:/usr/local/rvm/rubies/ruby-1.8.7-p302/bin:/usr/local/rvm/bin:$PATH",
  'RUBY_VERSION' => 'ruby-1.8.7-p302',
  'GEM_HOME'     => "/usr/local/rvm/gems/ruby-1.8.7-p302",
  'GEM_PATH'     => "/usr/local/rvm/gems/ruby-1.8.7-p302:/usr/local/rvm/gems/ruby-1.8.7-p302@global",
}
=end

$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) # Add RVM's lib directory to the load path.
require "rvm/capistrano"                  # Load RVM's capistrano plugin.
set :rvm_ruby_string, 'ruby-1.9.3-p125'        # Or whatever env you want it to run in.

set :repository,  "git@github.com:hom/handson_poker.git"
set :branch, 'v2.000'

set :deploy_to,   "/var/www/social/wptfb/html/#{application}"

set :user, 'wpt_gs'

role :app, "wpt_gs@att-prodapp05", "wpt_gs@att-prodapp06", "wpt_gs@att-prodapp07", "wpt_gs@att-prodapp08", "wpt_gs@att-prodapp09"
role :web, "wpt_gs@att-prodapp05", "wpt_gs@att-prodapp06", "wpt_gs@att-prodapp07", "wpt_gs@att-prodapp08", "wpt_gs@att-prodapp09"
role :db, "wpt_gs@att-prodapp07", :primary => true

set :rails_env, "production"
