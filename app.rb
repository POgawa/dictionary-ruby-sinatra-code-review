require ("sinatra")
require ('rerun')
require('./lib/word.rb')
require "./lib/definition.rb"





get('/') do
  @words=Word.all

  erb(:index)
end



get '/addword' do
  erb(:add_word)
end



post '/addword' do
  @name = params.fetch('word')
  # @definition = params.fetch('definition')
  @word = Word.new({name: @name})
  @word.save
  erb :results
end
