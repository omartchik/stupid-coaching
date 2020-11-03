Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'questions#home'
  get 'rien', to: 'questions#home'
  get 'question', to: 'questions#question'
end
