Rails.application.routes.draw do
  devise_for :users

  get '/books' => 'books#index'
  get '/books/:id' => 'books#show'

  get '/favorites' => 'favorites#index'
  post '/favorites' => 'favorites#create'
  delete '/favorites/:id' => 'favorites#destroy'

  get '/users/:id' => 'users#show'

  get '/goals' => 'goals#index'
  get '/goals/:id' => 'goals#show'
  get '/goals/new' => 'goals#new'
  post '/goals' => 'goals#create'
  patch '/goals/:id' => 'goals#update'
  delete '/goals/:id' => 'goals#destroy'

  get '/book_subjects' => 'book_subjects#index'
  get '/book_subjects/:id' => 'book_subjects#show'

end
