require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original = params[:string]
    @reversed_string = original.reverse

    erb :reversed
  end

  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 
    'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']

  end
end