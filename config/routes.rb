Rails.application.routes.draw do
  resources :comments
  devise_for :users, path: "", path_names: { sign_in: "login", sign_out: "logout", sign_up: "register" }
  resources :portfolios, except: [:show] do 
    put :sort, on: :collection
  end
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
  get 'news' => 'pages#news'
end
