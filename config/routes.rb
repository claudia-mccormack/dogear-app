Rails.application.routes.draw do
  devise_for :users

  get '/' => 'books#index'
  post '/books' => 'books#create'
  get '/search' => 'books#search'
  get '/books/:id' => 'books#show'

  get '/favorites' => 'favorites#index'
  post '/favorites' => 'favorites#create'
  patch '/deadline' => 'favorites#deadline'
  patch '/tracking' => 'favorites#tracking'
  patch '/favorites' => 'favorites#finished'
  patch '/rating' => 'favorites#rating'
  delete '/favorites/:id' => 'favorites#destroy'

  get '/subjects/:id' => 'subjects#show'

  get '/recommendations' => 'user_subjects#index'








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
