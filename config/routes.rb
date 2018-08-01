Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

  namespace :admin do
<<<<<<< HEAD
    resources :preferences, only: [:index]
=======
    resources :preferences, only: [:index, :show, :new, :create, :edit, :update]
>>>>>>> 681dc0ae0af6d435b233beb0f21024ead763fdd7
  end
end
