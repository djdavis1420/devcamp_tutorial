Rails.application.routes.draw do
  devise_for :users
  resources :portfolios, except: [:show]
  get 'portfolio/:id' => 'portfolios#show', as: 'portfolio_show'
  get 'portfolios/angular' => 'portfolios#angular'
  get 'portfolios/ruby-on-rails' => 'portfolios#ruby_on_rails'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
end
