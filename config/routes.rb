Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'review/new'
  get 'review/create'
  resources :lists, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]
end
