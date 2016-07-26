Rails.application.routes.draw do
  root to: 'welcome#index'
  get 'profile'=> 'boards#profile'
  get 'create' => 'boards#new'
  devise_for :users
  resources :pictures
  resources :boards


end

#rake db:created
#rails g controller welcome index
