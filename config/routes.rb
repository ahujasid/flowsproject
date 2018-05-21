Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :flows, except: [:index, :show]
  get '/:id', to: 'flows#show', as: 'show_flow'
  root :to => 'flows#index'
end
