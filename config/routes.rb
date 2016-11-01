Rails.application.routes.draw do
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
