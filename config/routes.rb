Rails.application.routes.draw do

  # NHO: nice work nesting resources!
  resources :users do
    resources :activities
  end

  root 'welcome#index'
  # root 'users#index' NHO: I don't think you want two roots
end
