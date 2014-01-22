Yearscheduler::Application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }

  get "calendar", to: "calendar#index"
  get "calendar/:year", to: "calendar#index"
  post "updateLabel", to: "calendar#update_label"
  post "updateDate", to: "calendar#update_date"

  # You can have the root of your site routed with "root"
  root 'welcome#index'
end
