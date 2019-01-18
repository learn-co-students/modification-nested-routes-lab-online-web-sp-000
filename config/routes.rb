Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: [:show, :index, :new, :edit]
  end
  
  resources :songs
end
