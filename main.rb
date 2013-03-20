require 'rubygems'
require 'sinatra'

set :sessions, true

helpers do
	
	def user_logged_in?
		if session[:username]
			true
		else
			false
		end
	end

end

# Home 
get '/' do
	if user_logged_in?
		redirect '/game'
	else
		erb :new_user
	end	
end

get '/new_user' do
	erb :new_user
end

post '/new_user' do
	session[:username] = params['username']
	if session[:username].length == 0
		@error = "You didn't enter your name, please try again."
		erb :new_user
	else
		redirect '/game'
	end
end

get '/game' do
	erb :game
end

get '/logout' do
	session.clear
	redirect '/'
end