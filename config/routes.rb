Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: %i[index show new edit]
  end
  resources :songs
end
