ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'projects'
  map.resources :projects
  map.connect ':slug', :controller => 'pages', :action => 'show'
end
