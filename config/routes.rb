Rails.application.routes.draw do

  resources :users do
    resources :activities
  end

  root 'welcome#index'
  root 'users#index'
end
