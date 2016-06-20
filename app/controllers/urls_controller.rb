class UrlsController < ApplicationController

  def index
    @urls = Url.all
  end

  def new
    @url = Url.new
  end

  def create
    redirect_to root_path, notice:'Tracking url has been create'
  end

  def show
    @url = Url.find(params[:id])
  end
end
