require 'rails_helper'

describe PayeesController do
  describe 'GET index' do
    it "renders a 200 response" do
      get :index
      expect(response.status).to eq(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe 'GET new' do
    it "renders a 200 response" do
      get :new
      expect(response.status).to eq(200)
    end

    it "renders the new template" do
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe "POST create" do
    it "renders a 200 response" do
      post :create
      expect(response.status).to eq(200)
    end

    it "renders the index template" do
      post :create
      expect(response).to render_template(:index)
    end
  end

  describe "GET edit" do
    it "renders a 200 response" do
      payee = create(:payee)
      get :edit, id: payee
      expect(response.status).to eq(200)
    end

    it "renders the edit template" do
      payee = create(:payee)
      get :edit, id: payee
      expect(response).to render_template(:edit)
    end
  end

  describe "PATCH update" do
    it "renders a 200 response" do
      payee = create(:payee)
      patch :update, id: payee
      expect(response.status).to eq(200)
    end

    it "renders the show template" do
      payee = create(:payee)
      patch :update, id: payee
      expect(response).to render_template(:show)
    end
  end

  describe "GET show" do
    it "renders a 200 response" do
      payee = create(:payee)
      get :show, id: payee
      expect(response.status).to eq(200)
    end

    it "renders the show template" do
      payee = create(:payee)
      get :show, id: payee
      expect(response).to render_template(:show)
    end
  end

  describe "DELETE payee" do
    it "renders a 200 response" do
      payee = create(:payee)
      delete :destroy, id: payee
      expect(response.status).to eq(200)
    end

    it "renders the index template" do
      payee = create(:payee)
      delete :destroy, id: payee
      expect(response).to render_template(:index)
    end
  end
end
