require 'rails_helper'

RSpec.describe Api::V1::PetsController, type: :controller do
  describe 'GET index' do
    it 'sends back a success status' do
      get :index
      expect(response.status).to eq(200)
    end
  end
end
