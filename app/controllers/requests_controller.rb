class RequestsController < ApplicationController
  
  def submit_form
    @request = Request.new(params[:request])
    RequestNotifier.received(@request.message).deliver
    flash[:success] = "Ваша заявка принята. Менеджер свяжется с вами в ближайшее время!"
    
    respond_to do |format|
      format.html { redirect_to root_url }
      format.js
    end
  end
  
  def validate
    request = Request.new(params[:request])
    validator(request)
    respond_to do |format|
      format.json { render json: @errors }
    end
  end
  
end