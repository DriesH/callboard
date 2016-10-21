Rails.application.routes.draw do
  get 'main/home'
  post 'main/upload'

  root 'main#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
