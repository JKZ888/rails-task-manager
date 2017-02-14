Rails.application.routes.draw do

#read all
get "tasks", to: "tasks#index", as:'tasks'

# create
get "tasks/new", to: "tasks#new", as: 'new_task'
post "tasks", to: "tasks#create"

#read a restaurant
get "tasks/:id", to: "tasks#show", as: 'task'
# tasks/1 => params[:id] => 1
# tasks/show => params[:id] => "show"

# update a task
get "tasks/:id/edit", to: "tasks#edit", as: 'edit_task'
patch "tasks/:id", to: "tasks#update"

#delete
delete "tasks/:id", to: "tasks#destroy", as: 'delete'

end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



# GET '/tasks/:id': get a precise task, e.g GET '/tasks/3' get task with id=3
# GET '/tasks/new': get the form to create a new task
# POST '/tasks': post a new task
# GET '/tasks/:id/edit': get the form to edit an existing task
# PATCH '/tasks/:id': update an existing task
# DELETE '/tasks/:id': delete an existing task

