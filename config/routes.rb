Rails.application.routes.draw do
  resources :restaurants, only: [:index] do
    resources :reviews, only: [ :new, :create ]
  end
end
