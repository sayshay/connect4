# Require config/environment.rb
require ::File.expand_path('../config/environment',  __FILE__)
require 'rack-timeout'


use Rack::Timeout
Rack::Timeout.timeout = 60

set :app_file, __FILE__

run Sinatra::Application
