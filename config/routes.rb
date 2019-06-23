Rails.application.routes.draw do
  resources :portfolios
  resources :blogs
  
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
end
