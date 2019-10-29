Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # GET all
  get 'tasks', to: 'tasks#index'

  # NEW
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # GET one
  get 'tasks/:id', to: 'tasks#show', as: :task

  # EDIT
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'

  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy'
end
