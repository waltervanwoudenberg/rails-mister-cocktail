Rails.application.routes.draw do

  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses, only: [:create, :new, :destroy]
  end
end
