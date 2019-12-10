Rails.application.routes.draw do
  resources :messages
  resources :applications, param: :token do
    resources :chats
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
