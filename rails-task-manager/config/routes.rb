Rails.application.routes.draw do
  # read all tasks
  get 'tasks', to: 'tasks#index'

  # create a task
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'

  # update a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # read one task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # delete a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
