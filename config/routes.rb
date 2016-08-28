Rails.application.routes.draw do
  devise_for :users

  get '/' => 'books#index'
  get '/books/new' => 'books#new'
  post '/books' => 'books#create'
  get '/books/:id' => 'books#show'
  get '/books/:id/edit' => 'books#edit'
  patch '/books/:id' => 'books#update'
  delete '/books/:id' => 'books#destroy'

  get '/favorites' => 'favorites#index'
  post '/favorites' => 'favorites#create'
  patch '/favorites' => 'favorites#finished'
  delete '/favorites' => 'favorites#destroy'

  get '/goals' => 'goals#index'
  get '/goals/:id' => 'goals#show'
  get '/goals/new' => 'goals#new'
  post '/goals' => 'goals#create'
  patch '/goals/:id' => 'goals#update'
  delete '/goals/:id' => 'goals#destroy'
  #
  # get '/book_subjects' => 'book_subjects#index'
  # get '/book_subjects/:id' => 'book_subjects#show'

end
