CraigslistRails::Application.routes.draw do
  root :to => 'categories#index'
  resources :categories
  resources :postings, :except => [:index]
end
