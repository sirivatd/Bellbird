Rails.application.routes.draw do

  resources :alarms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: redirect('/alarms')
end
