require 'sinatra/base'
set :show_exceptions, :after_handler


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
  error do
  'Sorry there was a nasty error - ' + env['sinatra.error'].message
  end
  post '/status' do
    status 404
    @page = Page::BasicPage.new(title: 'Page Not Found - 404')
    erb :team
  end
  
end
