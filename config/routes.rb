Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "books#index"

# resources :books
# resources :authors
# resources :users
# resources :reviews

resources :books, only: [:create, :new, :index, :destroy, :show] do
   resources :reviews, only: [:new, :create]
 end

 resources :users, only: [:index,:show] do
   resources :reviews, only: [:destroy]
 end

 resources :authors, only: [:index, :show, :destroy]

end
