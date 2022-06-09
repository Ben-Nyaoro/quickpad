Rails.application.routes.draw do
  get 'accounting_entries/index'
  get 'accounting_entries/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

	resources :accounting_codes
	resources :accounting_entries, only: [:index, :show, :new, :create]
end
