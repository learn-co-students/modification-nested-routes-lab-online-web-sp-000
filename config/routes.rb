Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: [:index, :show, :new, :edit]
  end
  resources :songs
end

#routes to songs as anested resource of an artist
# routes to a song as a nested resource of an artist
# newsong/editsong
