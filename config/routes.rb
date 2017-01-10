ShopifyApp::Engine.routes.draw do
  controller :sessions do
    get '/shopify_modules/login' => :new, :as => :login
    post '/shopify_modules/login' => :create, :as => :authenticate
    get '/shopify_modules/auth/shopify/callback' => :callback
    get '/shopify_modules/logout' => :destroy, :as => :logout
  end

  namespace :webhooks do
    post ':type' => :receive
  end
end
