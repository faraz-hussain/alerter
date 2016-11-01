Rails.application.routes.draw do
  # Routes for the Request resource:
  # CREATE
  get "/requests/new", :controller => "requests", :action => "new"
  post "/create_request", :controller => "requests", :action => "create"

  # READ
  get "/requests", :controller => "requests", :action => "index"
  get "/requests/:id", :controller => "requests", :action => "show"

  # UPDATE
  get "/requests/:id/edit", :controller => "requests", :action => "edit"
  post "/update_request/:id", :controller => "requests", :action => "update"

  # DELETE
  get "/delete_request/:id", :controller => "requests", :action => "destroy"
  #------------------------------

  devise_for :requesters
  # Routes for the Requester resource:
  # READ
  get "/requesters", :controller => "requesters", :action => "index"
  get "/requesters/:id", :controller => "requesters", :action => "show"


  # Routes for the Keyword resource:
  # CREATE
  get "/keywords/new", :controller => "keywords", :action => "new"
  post "/create_keyword", :controller => "keywords", :action => "create"

  # READ
  get "/keywords", :controller => "keywords", :action => "index"
  get "/keywords/:id", :controller => "keywords", :action => "show"

  # UPDATE
  get "/keywords/:id/edit", :controller => "keywords", :action => "edit"
  post "/update_keyword/:id", :controller => "keywords", :action => "update"

  # DELETE
  get "/delete_keyword/:id", :controller => "keywords", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
