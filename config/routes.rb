Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: [:index, :show, :new]
  end
  resources :songs
end
