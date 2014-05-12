Rails.application.routes.draw do
  
  resources :pins do
  	member do
    	post 'getMetaData'
	end
  end

  resources :minor
  resources :favorite
  resources :competence

  match "pins/metadata" => "pins#getMetaData", via: [:post]

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
  
  root 'pins#index'

end
