require 'rails_helper'

RSpec.describe Api::V1::PetsController, type: :controller do
  describe 'GET #index' do
    it 'sends back a success status' do
      get :index
      expect(response.status).to eq(200)
      expect(response.content_type).to eq 'application/json'
    end
  end

  describe 'POST #create' do
    it 'sends back a created status and JSON when the correct params are passed' do
      post :create, params: {pet: {name: 'judy', age: 12}, format: 'json'}
      expect(response.status).to eq(201)
      expect(response.content_type).to eq 'application/json'
    end

    it 'sends back bad request status when incorrect/missing params are sent' do
      post :create, params: {pet: {age: 10}, format: 'json'}
      expect(response.status).to eq(400)
      expect(response.content_type).to eq 'application/json'
    end
  end

  describe 'GET #show' do
    it 'sends back a not_found status if the pet id is not in the database' do
      get :show, params: {id: -1}
      expect(response.status).to eq(404)
      expect(response.content_type).to eq 'text/html'
    end

    it 'sends back a success status if the pet id is in the database' do
      pet = Pet.create(name: 'sprinkles', age: 10)
      get :show, params: {id: pet.id}
      expect(response.status).to eq(200)
      expect(response.content_type).to eq 'application/json'
    end
  end

  describe 'POST #update' do
    pet = Pet.create(name: 'sprinkles', age: 10)
    it 'sends back a success status if the correct params are passed in' do
      post :update, params: {id: pet.id, pet: {happiness: 100}, format: 'application/json'}
      expect(response.status).to eq(200)
      expect(response.content_type).to eq 'application/json'
    end

    it 'sends back a bad_request status if incorrect params are passed in' do
      post :update, params: {id: pet.id, pet: {username: 'Peggy Sue', diet: 'Strawberries'}, format: 'application/json'}
      expect(response.status).to eq(400)
      expect(response.content_type).to eq 'text/html'
    end

    it 'sends back a not_found status if the wrong pet id is passed in' do
      post :update, params: {id: -1, pet: {name: 'Not a Real Pet'}, format: 'application/json'}
      expect(response.status).to eq(404)
      expect(response.content_type).to eq 'text/html'
    end
  end
end
