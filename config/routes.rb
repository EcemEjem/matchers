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
end
