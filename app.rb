require 'sinatra/base'
set :show_exceptions, after_handler

error Document::

class App < Sinatra::Base
  
  get '/newteam' do
    erb :newteam
  end
  
  post '/team' do
    @name = params["name"]
    @coach = params["coach"]
    @pg = params["pg"]
    @sg = params["sg"]
    @sf = params["sf"]
    @pf = params["pg"]
    @center = params["c"]
    erb :team
  end

end
