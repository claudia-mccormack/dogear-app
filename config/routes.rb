Rails.application.routes.draw do
  devise_for :users

  get '/' => 'books#index'
  get '/search' => 'books#search'
  get '/books/:id' => 'books#show'

  get '/favorites' => 'favorites#index'
  post '/favorites' => 'favorites#create'
  patch '/deadline' => 'favorites#deadline'
  patch '/progress' => 'favorites#progress'
  patch '/favorites' => 'favorites#finished'
  patch '/rating' => 'favorites#rating'
  delete '/favorites/:id' => 'favorites#destroy'

  get '/subjects/:id' => 'subjects#show'

  get '/recommendations' => 'user_subjects#index'


  namespace :api do
    namespace :v1 do

      get '/books' => 'books#index'
      get '/search' => 'books#search'
      get '/books/:id' => 'books#show'

      get '/favorites' => 'favorites#index'
      post '/favorites/:id' => 'favorites#create'
      # post '/favorites/:id' => 'favorites#update'
      # patch '/deadline' => 'favorites#deadline'
      # patch '/progress' => 'favorites#progress'
      # patch '/favorites' => 'favorites#finished'
      # patch '/rating' => 'favorites#rating'
      delete '/favorites/:id' => 'favorites#destroy'

      get 'subjects' => 'subjects#index'
      get '/subjects/:id' => 'subjects#show'

      get '/recommendations' => 'user_subjects#index'

    end
  end






  # get '/goals' => 'goals#index'
  # # get '/goals/:id' => 'goals#show'
  # get '/goals/new' => 'goals#new'
  # post '/goals' => 'goals#create'
  # get '/goals/:id/edit' => 'goals#edit'
  # patch '/goals/:id' => 'goals#update'
  # delete '/goals/:id' => 'goals#destroy'
  # #
  # get '/book_subjects' => 'book_subjects#index'
  # get '/book_subjects/:id' => 'book_subjects#show'

end
