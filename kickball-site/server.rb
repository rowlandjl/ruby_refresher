require "sinatra"
require "pry" if development? || test?
require "sinatra/reloader" if development?

require_relative "models/league"

set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do
  redirect '/teams'
end

get "/teams" do
  @league = League.new
  binding.pry
  "<h1>The LACKP Homepage<h1>"
  @teams = @league[:teams]
  erb :index
end
