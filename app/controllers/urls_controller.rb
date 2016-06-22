class UrlsController < ApplicationController
  before_action :load_url, only: [ :show, :edit, :update ]

  def index
    @urls = Url.all
  end

  def new
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)
    if @url.save
      redirect_to url_url(@url), notice:'Tracking url has been create'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @url.update_attributes(url_params)
      redirect_to url_url(@url), notice:'Tracking url has been create'
    else
      render :edit
    end
  end

private
  def url_params
    params.require(:url).permit(:title, :url, :privacy)
  end

  def load_url
    @url = Url.find(params[:id])
  end
end
