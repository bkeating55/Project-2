Rails.application.routes.draw do

  resources :activities

  root 'welcome#index'
end
