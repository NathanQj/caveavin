Rails.application.routes.draw do
  root 'welcome#index'

  #######################################
  #               STATIC                #
  #######################################
  get 'welcome/index'

  #######################################
  #               DEVISE                #
  #######################################
  devise_for :users

  #######################################
  #             RESOURCES               #
  #######################################
  resources :products, only: [:index, :show, :new, :create]


  namespace :admin do
#     # Directs /admin/products/* to Admin::ProductsController
#     # (app/controllers/admin/products_controller.rb)
#     resources :products
  end
end
