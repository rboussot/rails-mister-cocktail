Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Rails.application.routes.draw do
  root 'cocktails#index'
    resources :cocktails do
      resources :doses do
    end
  end
end
