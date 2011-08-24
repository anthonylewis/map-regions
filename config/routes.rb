MapRegions::Application.routes.draw do
  resources :polygons, :only => [:index, :create, :destroy]

  root :to => "polygons#index"
end
