Rails.application.routes.draw do
  resources :items, only: [:index] do


  end

  resources :users, only: [:show] do
    resources :items, only: [:index, :show]

  end
end
