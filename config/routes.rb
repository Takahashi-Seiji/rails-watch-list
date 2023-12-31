Rails.application.routes.draw do
  resources :lists, only: [:index, :show, :new, :create, :destroy] do
    resources :reviews, only: [:new, :create]
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]
end
