Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/customers/:id/teas',                to: 'customer_teas#index'
  post '/customers/:customer_id/teas',      to: 'customer_teas#create'
  patch '/subscription/:subscription_id',   to: 'customer_teas#update'
end
