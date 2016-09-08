Rails.application.routes.draw do
  devise_for :users

  resources :users
  resources :friends
  resources :events

  devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"

  get '/sms/text_friend' => 'sms#text_friend'
  get '/sms/text_friend_once_home' => 'sms#text_friend_once_home'

# get '/events/progress' => 'events#progress'


  delete "/friends/:id" => "friends#destroy"

end
