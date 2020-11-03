Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: %i[index show new update] do
    resources :reviews, only: %i[new update]
  end
end
