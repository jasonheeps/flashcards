Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      # define routes for API requests here
    end
  end
end

# root '/'

# do we need a fallback like this?
# get '/*path' => 'decks#index'
