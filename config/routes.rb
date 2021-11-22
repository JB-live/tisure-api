Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :subjects, shallow: true do
    resources :chapters do
      resources :questions do
        resources :choices
        post 'attach_image'
        get 'records'
      end
    end
  end
  resources :records
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
