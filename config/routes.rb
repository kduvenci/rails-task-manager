Rails.application.routes.draw do
  get "/", to: "tasks#index", as: :root

  get "/task/:id", to: "tasks#show", as: "show_task"

  get "/new", to: "tasks#new", as: "new_task"
  post "/new", to: "tasks#create", as: "create_task"

  get "/edit/:id", to: "tasks#edit", as: "edit_task"
  post "/:id", to: "tasks#update"

  delete "/:id", to: "tasks#destroy", as: "delete_task"
end
