Rails.application.routes.draw do
  root 'movies#index'
  resources :movies do
    resources :songs
  end
end
