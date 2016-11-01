class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def show
    @request = Request.find(params[:id])
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new
    @request.requester_id = params[:requester_id]
    @request.keyword_id = params[:keyword_id]
    @request.action_id = params[:action_id]

    if @request.save
      redirect_to "/requests", :notice => "Request created successfully."
    else
      render 'new'
    end
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])

    @request.requester_id = params[:requester_id]
    @request.keyword_id = params[:keyword_id]
    @request.action_id = params[:action_id]

    if @request.save
      redirect_to "/requests", :notice => "Request updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @request = Request.find(params[:id])

    @request.destroy

    redirect_to "/requests", :notice => "Request deleted."
  end
end
