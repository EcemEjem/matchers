Rails.application.routes.draw do
  devise_for :companies
  devise_for :employees
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :contractor do
    resource :profile, only: [:edit, :update]''
    resources :jobs, only: [:index, :show] do
      resources :job_applications, only: [:new, :create]
    end
  end
end
