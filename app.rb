require ("sinatra")
require ('rerun')
require('./lib/word.rb')
require "./lib/definition.rb"





get('/') do
  @words = Word.all()

  erb(:index)
end



get '/addword' do
  erb(:add_word)
end



post '/addword' do
  @name = params.fetch('name')
  @word = Word.new({name: @name})
  @word.save
  redirect('/')
end


get '/word/:id' do

  @word = Word.find(params.fetch("id").to_i)
  erb :word
end

get '/newdefinition/:id' do
  @id = params.fetch('id')
  erb :add_definition
end


post '/newdefinition/:id' do
  definition = params.fetch('definition')
  @word = Word.find(params.fetch('id').to_i)
  @definition = Definition.new({:definition => definition})
  @word.add_definition(@definition)
  erb :definition_result
end
