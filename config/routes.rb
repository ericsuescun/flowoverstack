Rails.application.routes.draw do
	get 'questions', to: 'questions#index'
	get '/questions/new', to: 'questions#new', as: 'new_question'
	post '/questions', to: 'questions#create'
	get '/questions/:id', to: 'questions#show'
end
