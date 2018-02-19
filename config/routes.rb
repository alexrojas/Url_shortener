Rails.application.routes.draw do
  root 'url#index'
  post '/url_create' => 'url#create'
  get '/:short' => 'url#show', as: 'short'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root 'url#index'
  # #
  # # get 'url/show'
  # resources :url
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
