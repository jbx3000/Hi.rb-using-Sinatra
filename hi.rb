require 'sinatra'
require 'yaml/store'

get '/' do
  @title = 'Welcome to a menu choice list'
  erb :index
end

get '/results' do
  @votes = { 'HAM' => 7, 'PIZ' => 5, 'CUR' => 3 }
  erb :results
end

Choices = {
  'HAM' => 'Hamburger',
  'PIZ' => 'Pizza',
  'CUR' => 'Curry',
  'NOO' => 'Noodles',
}

post '/cast' do
  @title = 'Thanks for casting your vote!'
  @vote  = params['vote']
  erb :cast
end