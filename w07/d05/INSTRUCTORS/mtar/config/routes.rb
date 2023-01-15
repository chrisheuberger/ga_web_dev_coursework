Rails.application.routes.draw do

  get 'lines/:line_name' => 'lines#show'
  root 'welcome#index'

end
