ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'projects'
  map.resources :projects
end
