require 'rails_helper'

describe UrlsController do
  describe "GET index" do
    before { get :index }

    it { should render_template(:index) }

    it "assigns urls to template" do
      url = FactoryGirl.create(:public_url)
      expect(assigns(:urls)).to eq([url])
    end
  end

  describe "GET show" do
    let(:url) { FactoryGirl.create(:public_url) }
    before { get :show, id: url }
    it { should render_template(:show) }

    it "assigns url to template" do
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

  describe "POST create" do
    let(:url_attr) { FactoryGirl.attributes_for(:public_url) }

    it "create url" do
      expect {
        post :create, url: url_attr
      }.to change(Url, :count).by(1)
    end

    it "redirect to urls" do
      post :create, url: url_attr
      expect(response).to redirect_to(url_path(assigns(:url)))
    end
  end
end
