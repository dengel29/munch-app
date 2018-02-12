Rails.application.routes.draw do
  devise_for :users
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'menu_categories#index'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :menus, only: [ :index, :show ]
      resources :menu_categories, only: [ :index, :show ]
      resources :menu_subcategories, only: [ :index, :show ]
      resources :menu_items, only: [ :index, :show ]
    end
  end

  resources :menu_item, only: [ :index, :show ]
  resource :menu_category, only: [ :index, :show ]
end
