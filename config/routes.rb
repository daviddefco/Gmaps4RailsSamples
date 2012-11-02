Gmaps4Rails::Application.routes.draw do
  resources :events
  root :to => 'application#home'
  match 'partial' => 'application#partial', :as => :partial
  match 'button' => 'application#button', :as => :button
  match 'javascript' => 'application#javascript', :as => :javascript 
end