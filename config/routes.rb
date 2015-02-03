Rails.application.routes.draw do
  # site = controller
  # home = action
  # to create a controller -> rails g controller site
  get '/' => 'site#home'
  get '/urls' => 'urls#index'
end

