Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: [:index, :show, :edit, :new]
  end
  resources :songs
end
