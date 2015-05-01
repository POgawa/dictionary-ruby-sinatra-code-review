require ("sinatra")
require ('rerun')
require('./lib/word.rb')
require "./lib/definition.rb"





get('/') do
   erb(:index)
 end
