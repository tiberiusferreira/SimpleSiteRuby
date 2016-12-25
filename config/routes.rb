Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # When getting /index from url call controller shops and it's method index
  root 'shops#home'
  resources :shops
  # match '/shop/:id' => 'shop#show', via: [:get, :post]


  #get '/list' => 'shops#list'
  #get '/shops/new' => 'shops#new'
  #post 'shops' => 'shops#create'
end
