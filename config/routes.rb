Rails.application.routes.draw do
  root 'pages#main'

  resources :recipes, only: %i[new create show]
end
