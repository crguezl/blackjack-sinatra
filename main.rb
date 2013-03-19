require 'rubygems'
require 'sinatra'

set :sessions, true

# Home 
get '/' do
	erb :form
end

post '/form_render' do
	session[:some_data] = params['some_data'] # Store form data into session hash
	erb :form_render
end