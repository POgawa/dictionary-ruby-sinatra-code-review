require "word"
require "definition"
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)



describe('the index', {:type => :feature}) do
  it('has the header that describes what teh headline is') do
    visit('/')
    expect(page).to have_content('Dictionary Ogawa')
  end
end
