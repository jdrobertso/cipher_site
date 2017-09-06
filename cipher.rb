require 'sinatra'


get '/' do

	erb :index
end

puts "What message would you like to encrypt?"
message = gets.chomp
puts "How far should I shift it?"
shift = gets.chomp

letters = message.split(//)
letters.each do |letters|
	x = letters.to_i
	puts x
end