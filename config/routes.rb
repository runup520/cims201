Chapter3::Application.routes.draw do
 
 resources :users
 
 resources :articles do
    resources :comments
    resources :critics
 end

 resources :critics


 resources :sessions, only: [:new, :create, :destroy]



 root to: 'static_pages#home'

 
 match '/home', to: 'static_pages#home'
 match '/help', to: 'static_pages#help'
 match '/about', to: 'static_pages#about'
 match '/contact', to: 'static_pages#contact'

 match '/signup',  to: 'users#new'

 match '/signin', to: 'sessions#new'
 match '/signout', to: 'sessions#destroy', via: :delete

 match '/km',  to: 'static_pages#km'



 match '/pm',  to: 'static_pages#pm'

 match '/time',  to: 'static_pages#time'
 match '/ecommerce',  to: 'static_pages#ecommerce'
 match '/product',  to: 'static_pages#product'
 match '/mobile',  to: 'static_pages#mobile'
 match '/movie',  to: 'static_pages#movie'
 match '/logic',  to: 'static_pages#logic'
 match '/read',  to: 'static_pages#read'
 match '/life',  to: 'static_pages#life'
 
match '/web',  to: 'static_pages#web'
match '/java',  to: 'static_pages#java'
match '/ruby',  to: 'static_pages#ruby'
match '/data',  to: 'static_pages#data'
match '/searchresult',  to: 'static_pages#searchresult'
match '/job',  to: 'static_pages#job'
match '/job_show',  to: 'static_pages#job_show'
match '/seven_show',  to: 'static_pages#seven_show'
match '/work_show',  to: 'static_pages#work_show'
match '/programmer_show',  to: 'static_pages#programmer_show'
match '/fun_show',  to: 'static_pages#fun_show'
match '/new_show',  to: 'static_pages#new_show'
match '/old_show',  to: 'static_pages#old_show'

match '/admin',  to: 'static_pages#admin'








  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
