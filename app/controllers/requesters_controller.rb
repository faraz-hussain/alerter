class RequestersController < ApplicationController
  def index
    @requesters = Requester.page(params[:page])
  end

  def show
    @requester = Requester.find(params[:id])
  end
end
