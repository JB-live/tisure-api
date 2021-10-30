Rails.application.routes.draw do
  resources :subjects, shallow: true do
    resources :chapters do
      resources :questions do
        resources :choices
        post 'attach_image'
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
