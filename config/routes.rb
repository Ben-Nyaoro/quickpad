Rails.application.routes.draw do
  root to: 'pages#home'
  get 'accounting_entries/index'
  get 'accounting_entries/show'
  devise_for :users

	resources :accounting_codes
	resources :accounting_entries
	resources :journal_entries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
