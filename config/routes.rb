TaskFields::Application.routes.draw do
  get "multi_task/type"

  post "multi_task/form"
  post "multi_task/list"

  root :to => "tasks#index"
  
  resources :tasks, :only => [:new, :create, :show]
end
