Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :entries, except: [:new, :edit] # could do a new view
  end
end

#pretty sure the functionality for destroy does not yet exist
