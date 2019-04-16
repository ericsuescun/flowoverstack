Rails.application.routes.draw do

	root 'questions#index'

	resources :questions do
		resources :comments, only: [:create]
	end

	resources :users, only: [:new, :create]

	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
	delete 'logout', to: 'sessions#destroy'
end
