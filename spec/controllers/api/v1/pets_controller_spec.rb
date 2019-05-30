require 'rails_helper'

RSpec.describe Api::V1::PetsController, type: :controller do
  describe 'GET #index' do
    it 'sends back a success status' do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe 'POST #create' do
    it 'sends back a created status and JSON when the correct params are passed' do
      post :create, params: {pet: {name: 'judy', age: 12}, format: 'json'}
      expect(response.status).to eq(201)
    end

    it 'sends back bad request status when incorrect/missing params are sent' do
      post :create, params: {pet: {age: 10}, format: 'json'}
      expect(response.status).to eq(400)
    end
  end

  describe 'GET #show' do
    it 'sends back a not found status if the pet id is not in the database' do
      get :show, params: {id: -1}
      expect(response.status).to eq(404)
    end
  end
end
