Rails.application.routes.draw do
  root 'flats#index'
  resources :flats

  mount Attachinary::Engine => "/attachinary"
end
