require 'sinatra'
require "sinatra/json"

set :port, 80
set :bind, '0.0.0.0'

get '/logs' do
  logs = File.read("./log.txt")
  stuff = logs.split("\n").map do |line|
    date, count = line.split(",")
    [DateTime.parse(date).to_time.to_i, count.to_i]
  end

  json logs: stuff
end

get '/hi' do
  "Hello World!"
end
