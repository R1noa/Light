Rails.application.routes.draw do

  root 'tasks#index' 
  get 'persons/profile' 
 
  devise_for :users, controllers: {registrations: "registrations"}

  resources :users do
    member do
      get :confirm_email
    end
  end

       resources :tasks do 
         put :complete, :not_complete, on: :member
         get 'complete'
         get 'make_active'
         collection do
           post :destroy_multiple
      
    end 
  end 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end