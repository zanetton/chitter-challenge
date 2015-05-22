require 'sinatra/base'
require 'data_mapper'

env = ENV['RACK_ENV'] || 'development'


DataMapper.setup(:default, "postgres://localhost/chitter_#{env}")

require './lib/peep'

DataMapper.finalize

DataMapper.auto_upgrade!

class Chitter < Sinatra::Base
  get '/' do
    @peeps = Peep.all
    erb :index
  end
  post '/peeps' do
  message = params['message']
  chitname = params['chitname']
  Peep.create(message: message, chitname: chitname)
  redirect to('/')
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
