TimeSheet::Application.routes.draw do


  get "about_us/index"
  resources :feedbacks

  resources :projects

  get "home/index"

  devise_for :users, :controllers => {:registrations => 'users'}

  #match 'users/update_projects/:id', :controller=>'users', :action => 'update_projects'

  get 'users/update_projects/:id', :controller=>'users', :action => 'update_projects'

  resources :users do
    get 'profile_info'
    resources :tasks do
      collection do 
         get 'users_by_project'
         get 'my_tasks'
      end
    end
    resources :descriptions
    resources :time_offs do
      member do
        get 'approve_leave'
      end
    end
    collection do 
      get 'users_by_role'
    end
  end

  root :to => "home#index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
