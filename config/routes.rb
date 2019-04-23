Rails.application.routes.draw do

	root 'questions#index'

	resources :questions do
		resource :vote, only: [:create, :destroy]
		resources :answers
		resources :comments, module: :questions	#This is to route to the specific controller for questions
	end

	resources :answers do
		resources :comments, module: :answers	#This is to route to the specific controller for answers
	end

	resources :users, only: [:new, :create]

	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
	delete 'logout', to: 'sessions#destroy'
end
