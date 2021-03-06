Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:create, :show, :destroy, :index, :update] do
    resources :fav_fonts, only: [:create, :destroy, :index]
    collection do
      post '/login', to: 'users#login'
    end
  end
  resources :fav_fonts, only: [:allfonts] do
    collection do
      get 'allfonts'
    end
  end

  # resources :fav_fonts, only: [:create, :show, :destroy]
end
