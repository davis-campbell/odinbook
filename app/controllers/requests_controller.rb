class RequestsController < ApplicationController
  def create
    Request.create(request_params)
    redirect_to root_path
  end

  def destroy
    Request.find(params[:id]).delete
    redirect_to root_path
  end


  private
    def request_params
      params.require(:request).permit(:requester_id, :requested_id)
    end
end
