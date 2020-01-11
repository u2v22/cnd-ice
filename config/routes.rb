Rails.application.routes.draw do
  get 'trip_reports/index'
  get 'trip_reports/new'
  devise_for :users
  root to: 'climbs#index'

  resources :trip_reports, only: [:index, :show, :edit, :update, :destroy]
  resources :climbs, only: [:show] do
    resources :trip_reports, only: [:new, :create]
  end
end
