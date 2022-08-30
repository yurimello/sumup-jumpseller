require 'bundler'
Bundler.require(:default, ENV['RACK_ENV'])
require_relative './config/application'

use Rack::Reloader
run Application.new
