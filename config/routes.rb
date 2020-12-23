Rails.application.routes.draw do
  get 'sessions/new'

  #get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'static_pages#home'
  #rootは/と同義
  #今回の場合はstatic_pagesが/と同じ
  
  get  '/help',    to: 'static_pages#help'
  #これはstatic_pages/helpでもアクセスできる
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
end
