Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'swim_races/my_races'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :swim_races do
    resources :swim_events, only: [:new, :create, :edit, :update, :destroy]
  end
end

