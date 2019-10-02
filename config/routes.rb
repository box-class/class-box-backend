Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :students do
    resources :degrees do
      resources :courses
    end
  end

  resources :courses

  resources :degrees

  resources :degrees do 
    resources :courses
  end

  resources :students do 
    resource :degrees
  end


end
