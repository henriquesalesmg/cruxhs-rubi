Rails.application.routes.draw do
  devise_for :administracaos
  get 'intercessao/index'

  namespace :artigos do
  get 'sites_para_aprender_ingles/index'
  end

  namespace :artigos do
  get 'app_deficientes/index'
  end

  namespace :artigos do
  get 'web_site/index'
  end

  namespace :artigos do
  get 'cartao_visita/index'
  end

  namespace :artigos do
  get 'vendas_on_line/index'
  end

  resources :contatos
  get 'artigos/index'

  get 'contato/index'

  get 'projetos/index'

  get 'artes/index'

  get 'desenvolvimento/index'

  get 'email_marketing/index'

  get 'cartao_de_visitas/index'

  get 'anuncios_propagandas/index'

  get 'aplicativos/index'

  get 'sistemas_de_cadastros/index'

  get 'responsivos/index'

  get 'intercessao' => 'intercessao#index'

  resources :homes
  resources :cruxhs
  root 'homes#new'
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
