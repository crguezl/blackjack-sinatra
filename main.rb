require 'rubygems'
require 'sinatra'

set :sessions, true

# Inline
get '/inline' do
	"Hi, directly from the action!"
end

# Template
get '/template' do
	erb :mytemplate
end

# Nested Template
get '/nested_template' do
	erb :'/users/profile'
end

# Redirect
get '/redirect' do
	redirect '/inline'
end

# Form
get '/form' do
	erb :form
end

# Post Form
post '/form_render' do
	@data = params['some_data']
	erb :form_render
end