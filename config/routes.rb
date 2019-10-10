Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'

  resources :students do
    resources :degrees do
      resources :courses
    end
  end

  resources :degrees do 
    resources :courses
  end

  resources :students do 
    resource :degrees
  end

  resources :courses

  resources :students

end
