class RequestersController < ApplicationController
  def index
    @requesters = Requester.all
  end

  def show
    @requester = Requester.find(params[:id])
  end
end
