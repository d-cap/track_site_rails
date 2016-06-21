class UrlsController < ApplicationController

  def index
    @urls = Url.all
  end

  def new
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)
    if @url.save
      redirect_to root_path, notice:'Tracking url has been create'
    else
      render :new
    end
  end

  def show
    @url = Url.find(params[:id])
  end
private
  def url_params
    params.require(:url).permit(:title, :url, :privacy)
  end
end
