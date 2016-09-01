Rails.application.routes.draw do
  get 'solver/pass'

  get 'solver/get'

  post "solver"  => 'solver#pass'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

