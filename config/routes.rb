Rails.application.routes.draw do
  
  resources :products

  resources :places do 
        get :report, on: :member
  end
  
  resources :regions
  root "regions#index"

end
