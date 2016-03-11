require './config/environment'
require './hhjhapp/models/tweet'


class ApplicationController < Sinatra::Base
  
  configure do 
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/' do
    Tweet.new("shakira-shakira", "hips don't lie,breh.")
    Tweet.new("Josue_Bravo", "Coding is life #nerdcity #computers_are_my_best_friend")
    Tweet.new("Mauricio_Heradez", "Chicken and waffles")
    @tweets = Tweet.all
    erb :index
  end
  
end


