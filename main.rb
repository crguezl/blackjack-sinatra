require 'rubygems'
require 'sinatra'

set :sessions, true

get '/' do
	erb :testing
end


post '/test' do
	@error = "This is an error"
end