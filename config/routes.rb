Rails.application.routes.draw do
  devise_for :users
  scope "(:locale)", locale: /fr|en/ do
    resources :participations
    resources :users
  end
  root to: 'participations#index'
end
