require 'rails_helper'

describe UrlsController do
  describe "GET index" do
    it "renders index template" do
      get :index
      expect(response).to render_template(:index)
    end

    it "assigns urls to template" do
      url = FactoryGirl.create(:public_url)
      get :index
      expect(assigns(:urls)).to eq([url])
    end
  end

  describe "GET show" do
    it "renders show template" do
      url = FactoryGirl.create(:public_url)
      get :show, id: url.id
      expect(response).to render_template(:show)
    end

    it "assigns url to template" do
      url = FactoryGirl.create(:public_url)
      get :show, id:url.id
      expect(assigns(:url)).to eq(url)
    end
  end

  describe "GET new" do
    it "renders new template" do
      get :new
      expect(response).to render_template(:new)
    end

    it "assigns new url to template" do
      get :new
      expect(assigns(:url)).to be_a_new(Url)
    end
  end
end
