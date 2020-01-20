require 'bundler'
require 'pry'

Bundler.require

module Concerns
end

require_all 'lib'
require './config/environment.rb'
require './lib/concerns/findable.rb'
