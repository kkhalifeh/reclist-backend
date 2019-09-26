Rails.application.routes.draw do
  get '/locations' => 'locations#index', :as => 'locations'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
