Rails.application.routes.draw do
  get 'main/home'
  get 'main/show_character/:character', to: 'main#show_character', as: 'show_character'
  get 'main/show/:token', to: 'main#show'
  post 'main/upload'

  root 'main#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
