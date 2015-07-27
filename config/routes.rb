Rails.application.routes.draw do
  resources :expenditures
  root 'expenditures#index'
end
