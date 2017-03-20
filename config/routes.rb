Rails.application.routes.draw do

  get '/ask', to: 'coaching#ask', as: :ask

  get '/answer', to: 'coaching#answer', as: :answer

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
