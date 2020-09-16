require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    puts params
    erb :reversed
    string = params[:string]
    @rev_string = string.reverse
  end
    get '/friends' do
      @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']

      erb :friends
    end
end
