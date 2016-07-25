Rails.application.routes.draw do

  get 'find_board'=>'find_board#find_board'

  get 'create_board'=>'create_board#new'

  get 'all_board'=>'all_board#all_board'

  post '/boards'=>'create_board#create'

  resources :pictures
  resources :boards
  devise_for :users
  get 'profile'=> 'profile#profile_home'
  get 'welcome/index'
  root to: 'welcome#index'
end

#rake db:created
#rails g controller welcome index
