Rails.application.routes.draw do
  #resources :liffs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'liff', to: 'static_pages#liff'
end
