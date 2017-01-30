Rails.application.routes.draw do
get '/welcome' => 'pages#welcome'

get '/' => 'pages#welcome'

get 'about' => 'pages#about'

get 'contest' => 'pages#contest'

get '/kitten/:size/:size' => 'pages#kitten'

get '/kittens/:size/:size' => 'pages#kittens'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
