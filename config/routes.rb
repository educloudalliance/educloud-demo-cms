Rails.application.routes.draw do
  get :cms, to: 'cms#show'
  root 'cms#show'
end
