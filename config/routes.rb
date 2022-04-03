Rails.application.routes.draw do

  devise_for :vol_groups, controllers: {
    sessions: 'vol_groups/sessions',
    registrations: 'vol_groups/registrations'
  }

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  devise_scope :vol_group do
    get '/vol_groups/sign_out' => 'devise/sessions#destroy'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'top#index'
end
