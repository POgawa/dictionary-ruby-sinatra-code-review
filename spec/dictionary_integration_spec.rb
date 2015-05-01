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

  describe('add word path') do
    it('adds a word to the dictionary') do
      visit('/')
      click_link('Add word')
      fill_in('name', with: 'word')
      click_button('Add word')
      expect(page).to have_content('word')
    end
  end


  describe('add description path', {:type => :feature}) do
  it("adds a description number to the contact") do
    visit '/'
    click_link('word')
    click_link('Add a definition')
    fill_in('definition', :with => 'it is a word')
    click_button('Submit')
    click_link 'Return to homepage'
    click_link('word')
    expect(page).to have_content('it is a word')
  end
end


end
