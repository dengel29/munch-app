Rails.application.routes.draw do
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :menus, only: [ :index ]
      resources :menu_categories, only: [ :index ]
      resources :menu_subcategories, only: [ :index ]
      resources :menu_items, only: [ :index ]

    end
  end
end
