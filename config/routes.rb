Rails.application.routes.draw do

  devise_for :users
  resources :movies do
    resources :reviews
    resources :ratings
  end

  root "movies#profile"
  get "/profile" => "movies#profile"
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
