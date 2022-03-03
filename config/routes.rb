Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/customers/:id/subscriptions',       to: 'subscriptions#index'
  post '/subscription',                     to: 'subscriptions#create'
  patch '/subscription/:subscription_id',   to: 'subscriptions#update'
end
