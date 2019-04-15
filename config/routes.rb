Rails.application.routes.draw do

	resources :users, only: [:new, :create]

	root 'questions#index'
	# get '/questions', to: 'questions#index'
	# get '/questions/new', to: 'questions#new', as: 'new_question'
	# post '/questions', to: 'questions#create'
	# get '/questions/:id', to: 'questions#show', as: 'question'
	# get '/questions/:id/edit', to: 'questions#edit', as: 'edit_question'
	# patch '/questions/:id', to: 'questions#update'

	resources :questions
end
