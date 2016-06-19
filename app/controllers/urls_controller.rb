class UrlsController < ApplicationController
  def new
    @url = Url.new
  end

  def create
    redirect_to root_path, notice:'Tracking url has been create'
  end
end
