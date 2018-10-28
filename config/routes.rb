Rails.application.routes.draw do
  devise_for :users
  resources :pages, only: [:home] do
    collection do
    get "home", to: "pages#home"
    get "title", to: "pages#title"
    get "rating", to: "pages#rating"
    get "genre", to: "pages#genre"
    get "poster", to: "pages#poster"
    get "year", to: "pages#year"
    get "votes", to: "pages#votes"
    get "test", to: "pages#test"
    get "time", to: "pages#time"
    get "meta_critic", to: "pages#meta_critic"
    end
  end
  root to: "pages#home"
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

