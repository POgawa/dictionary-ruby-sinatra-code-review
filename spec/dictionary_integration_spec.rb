require "word"
require "definition"
require('capybara/rspec')
require('./app')
require "pry"
Capybara.app = Sinatra::Application
set(:show_exceptions, false)



describe('the index', {:type => :feature}) do
  it('has the header that describes what the headline is') do
    visit('/')
    expect(page).to have_content('Dictionary Ogawa')
  end

  

end
