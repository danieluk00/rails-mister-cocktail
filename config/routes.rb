Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:show, :new, :index, :create] do
    resources :doses, only: [:create, :new]
  end
  resources :doses, only: [:destroy]
end
