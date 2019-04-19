Rails.application.routes.draw do
  # get 'comments/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount Post::Engine, at: "/"
  mount Comments::Engine, at: "/"
end
