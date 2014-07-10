Rails.application.routes.draw do
  resources :artists do
   resources :paintings
  end
end
