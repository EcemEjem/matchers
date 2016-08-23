Rails.application.routes.draw do
  devise_for :companies
  devise_for :employees
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :contractor do
    root to: 'cities#index', as: :root

    namespace :account do
      resource :profile, only: [:show, :edit, :update]

      resources :job_applications, only: [:index]
    end

    resources :jobs, only: [:index, :show] do
      resources :job_applications, only: [:new, :create]
    end
  end

  namespace :company do
    root to: 'account/profiles#show', as: :root

    namespace :account do
      root to: 'profiles#show', as: :root

      resource :profile, only: [:show, :edit, :update]

      resources :jobs
      # ALL hence only: [:index, :show, :new, :create, :edit, :update, :destroy]

      resources :job_applications, only: [:show] do
        member do
          patch :accept
          patch :decline
        end
      end
    end
  end

  # static pages
  get '/i-am-a-company', to: 'pages#company', as: :company_landing
  # so we call on the Company method from Pages Controller.
  # HTML'e baktiginda company.html.erb goreceksin same name as the method.
end
