MusicApp::Application.routes.draw do
  get "forgot_password/index"

  get "home/index"

  resources :signups


  get "login/index"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  match '/register' => 'signups#new', :as => :register
  match '/home/index' => 'home#index', :as => :home_index
  match '/login/index' => 'login#index', :as => :login_index
  match '/login/validate' => 'login#validate', :as => :login_validate
  match '/forgot_password/index' => 'forgot_password#index', :as => :forgot_password
  match '/forgot_password/validate' => 'forgot_password#validate', :as => :forgot_password_validate
  match '/logout/index' => 'logout#index', :as => :logout_index
  match '/home/index' => 'home#search', :as => :home_search_songs
  match '/home/play' => 'home#play', :as => :home_play_songs
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'login#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
