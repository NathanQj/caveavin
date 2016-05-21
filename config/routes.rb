Rails.application.routes.draw do
  devise_scope :user do
    authenticated :user do
      root 'products#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :root
    end
  end

  #######################################
  #               STATIC                #
  #######################################
  get "/contact" => "showcases#contact"
  get "/about" => "showcases#about"
  get "/faq" => "showcases#faq"


  #######################################
  #               DEVISE                #
  #######################################
  devise_for :users

  #######################################
  #             RESOURCES               #
  #######################################
  resources :products, only: [:index, :show, :new, :create]

  resources :degustations, only: [:index, :show, :new, :create]

  namespace :admin do
#     # Directs /admin/products/* to Admin::ProductsController
#     # (app/controllers/admin/products_controller.rb)
#     resources :products
  end
end
