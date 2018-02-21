Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 # root to: "tasks#index"
root to: "tasks#index"
resources :tasks

 # get "tasks/new", to: "tasks#new", as: :new
 # post "tasks", to: "tasks#create", as: :create #?????????????

 # get "tasks/:id", to: "tasks#show", as: :show

 # get "tasks/:id/edit", to: "tasks#edit", as: :edit
 # patch "tasks/:id", to: "tasks#update", as: :update

 # delete "tasks/:id", to: "tasks#destroy", as: :destroy

 get "tasks/:id/complete", to: 'tasks#complete', as: :complete

end



