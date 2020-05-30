Rails.application.routes.draw do
  root "hosts#index"

  resources :hosts do
  end
end
