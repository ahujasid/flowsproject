Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :flows, except: [:index, :show, :from_category, :show_all]
  get '/:id', to: 'flows#show', as: 'show_flow'
  get "category/:category_id" => 'flows#from_category', as: 'fetch_items'
  get "index/all", to: 'flows#show_all', as: 'all_items'
  root :to => 'flows#index'
end
