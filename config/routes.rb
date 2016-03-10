Rails.application.routes.draw do
  root 'home#form'
  get 'home/form'
  post 'home/create'
end
