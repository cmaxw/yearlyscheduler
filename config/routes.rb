Yearscheduler::Application.routes.draw do
  resources :label_colors

  get "calendar", to: "calendar#index"
  get "calendar/:year", to: "calendar#index"

  devise_for :users

  # You can have the root of your site routed with "root"
  root 'welcome#index'
end
