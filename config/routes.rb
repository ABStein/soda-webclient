Rails.application.routes.draw do
  get '/sodas' => 'sodas#index'
  get '/sodas/new' => 'sodas#new'
  post '/sodas' => 'sodas#create' 
  get '/sodas/:id' => 'sodas#show'
  get '/sodas/:id' => 'sodas#edit'
  patch '/sodas/:id' => 'sodas#update'
  delete '/sodas/:id' => 'sodas#destroy'
end
