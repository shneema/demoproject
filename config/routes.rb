Rails.application.routes.draw do
  devise_for :users
 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :articles, shallow: true do
   resources :likes
    resources :comments, shallow: true do
      resources :likes
    end
  end
  root 'articles#home'
end	     
