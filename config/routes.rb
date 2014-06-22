Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews
  end

  root to: 'root#index'
end
