Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: [:index, :show, :new, :edit, :create, :update]
  end
  resources :songs
end
