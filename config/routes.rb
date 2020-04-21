Rails.application.routes.draw do
  devise_for :users
  get "contact", to: "pages#contact"
  get "about", to: "pages#about"
  get "error", to: "pages#error"

  get "medium", to: redirect("https://medium.com/@s.shumnan")


  resources :projects do
    resources :tasks, except: [:index], controller: 'projects/tasks'
  end

  root to: 'pages#home'

  get "*path", to: redirect("/error")
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
