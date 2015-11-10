require 'sinatra'
require 'sinatra/reloader' if development?

require 'sinatra/activerecord'

set :database, "sqlite3:database.sqlite3"

require './models'

get '/' do 
	@users = User.all
	erb :all_users
end
