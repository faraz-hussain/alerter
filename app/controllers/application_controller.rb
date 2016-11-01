class ApplicationController < ActionController::Base
  before_action :authenticate_requester!

  protect_from_forgery with: :exception
end
