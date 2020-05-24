Rails.application.routes.draw do
  get 'home/index'
  root to: 'home#index'
  get 'home/change_region'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
