Rails.application.routes.draw do
  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'
  get 'cart/show'
  resources :shops
  root 'projects#index'
  devise_for :users
  resources :chlidrens do
    member do
      delete 'result_delete'
      delete 'bulk_result_delete'
    end
    collection do
     delete 'bulk_delete'
    end
  end
  resources :posts
  resources :students
  resources :friends
  resources :projects do 
    member do 
     delete 'bulk_result_delete' 
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
