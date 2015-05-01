require "word"
require "definition"
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
