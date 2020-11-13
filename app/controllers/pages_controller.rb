class PagesController < ApplicationController
  def index
    @request = Request.new
  end
end
