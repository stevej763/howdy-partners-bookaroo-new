require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "GET /new " do
    context 'user is logged in' do
      it "responds with 200" do
        controller.stub(:authorized)
        get :new
        expect(response).to have_http_status(200)
      end
    end

    context 'user is not logged in' do
      it "responds with 302" do
        get :new
        expect(response).to have_http_status(302)
      end
    end
  end

  describe "POST /" do

    before(:each) do
      controller.stub(:authorized)
    end

    it "responds with 200" do
      post :create, params: { post: { message: "Hello, world!" } }
      expect(response).to redirect_to(newsfeed_url)
    end

    it "creates a post" do
      post :create, params: { post: { message: "Hello, world!" } }
      expect(Post.find_by(message: "Hello, world!")).to be
    end
  end

  describe "GET /newsfeed" do
    context 'user is logged in' do
      it "responds with 200" do
        controller.stub(:authorized)
        get :newsfeed
        expect(response).to have_http_status(200)
      end
    end

    context 'user is not logged in' do
      it "responds with 302 and redirects" do
        get :newsfeed
        expect(response).to have_http_status(302)
      end
    end
  end
end
