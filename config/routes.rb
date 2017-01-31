Rails.application.routes.draw do
  devise_for :User
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root 'tasks#index'

  get 'persons/profile', as: 'user_root'

  resources :tasks do
    resources :users do
    member do
      get :confirm_email
    end
  end

    put :complete, on: :member
    collection do
      post :destroy_multiple
end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
