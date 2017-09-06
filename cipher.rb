require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
	erb :index
end

get '/submit' do
	message = params['message']
	shift = params['shift'].to_i
	new_message = shift(message, shift)
	erb :index, :locals => {:new_message => new_message}
end

def shift(message, shift)
	ascii 		= message.chars.map(&:ord)
	shifted 	= ascii.map{|c| c + shift}
	new_message = shifted.map{|c| c.chr}.join
	new_message
end