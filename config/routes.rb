Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      get 'flashcards/index'
      # define routes for API requests here
    end
  end
end

# this doesn't work. need to set the root route to
# something like '/decks'
# root '/'

# do we need a fallback like this?
# get '/*path' => 'decks#index'
