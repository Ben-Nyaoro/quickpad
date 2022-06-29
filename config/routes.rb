Rails.application.routes.draw do
  root to: 'pages#home'
  get 'accounting_entries/index'
  get 'accounting_entries/show'
  devise_for :users

	resources :accounting_codes

	resources :accounting_entries do
		resources :journal_entries, only: [:new, :create, :edit, :update]
	end	
	resources :journal_entries, only: [:show, :index, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
