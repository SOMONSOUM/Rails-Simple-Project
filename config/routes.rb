Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles

  get 'article' => 'article#index'
  # I want to show in each article by typing route 
  get 'article/new/:id' => 'article/new#show'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
