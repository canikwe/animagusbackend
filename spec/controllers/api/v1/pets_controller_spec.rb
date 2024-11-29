require 'rails_helper'

RSpec.describe Api::V1::PetsController, type: :controller do
  let(:expected_content_type) { 'application/json; charset=utf-8' }
  let(:expected_status) { 200 }
  
  shared_examples 'an expected request/response' do
    it 'sends back the expected status' do
      execute_request
      expect(response.status).to eq expected_status
      expect(response.content_type).to eq expected_content_type
    end
  end

  describe 'GET #index' do
    let(:execute_request) { get :index }

    before do
      Pet.create(name: 'sprinkles', age: 10)
      Pet.create(name: 'fluffy', age: 5)
    end

    it_behaves_like 'an expected request/response'

    it 'returns the list of pets' do
      execute_request
      expect(JSON.parse(response.body).length).to eq 2
    end
  end

  describe 'POST #create' do
    let(:execute_request) { post :create, params: params }
    let(:params) { { pet: { name: 'judy', age: 12 }, format: 'json' } }
    let(:expected_status) { 201 }

    it_behaves_like 'an expected request/response'

    it 'creates a new pet' do
      expect { execute_request }.to change { Pet.count }.by(1)
    end

    it 'returns the new pet' do
      execute_request
      expect(JSON.parse(response.body)['name']).to eq 'judy'
    end

    context 'when incorrect/missing params are sent' do
      let(:params) { { pet: { age: 10 }, format: 'json' } }
      let(:expected_status) { 400 }

      it_behaves_like 'an expected request/response'
    end
  end

  describe 'GET #show' do
    let(:execute_request) { get :show, params: { id: pet_id } }
    let(:pet_id) { 1 }
    
    context 'when the pet id is in the database' do
      let(:pet) { Pet.create(name: 'sprinkles', age: 10) }
      let(:pet_id) { pet.id }

      it_behaves_like 'an expected request/response'

      it 'returns the pet' do
        execute_request
        expect(JSON.parse(response.body)['name']).to eq 'sprinkles'
      end
    end

    context 'when the pet id is not in the database' do
      let(:pet_id) { -1 }
      let(:expected_status) { 404 }
      let(:expected_content_type) { 'text/html' }

      it_behaves_like 'an expected request/response'
    end
  end

  describe 'POST #update' do
    let(:execute_request) { post :update, params: { id: pet_id, pet: pet_params, format: 'application/json' } }
    let(:pet_params) { { happiness: 100 } }
    let(:pet_id) { pet.id }
    let(:pet) { Pet.create(name: 'sprinkles', age: 10) }

    it_behaves_like 'an expected request/response'

    it 'updates the pet' do
      execute_request
      expect(Pet.find(pet_id).happiness).to eq 100
    end

    it 'returns the updated pet' do
      execute_request
      expect(JSON.parse(response.body)['happiness']).to eq 100
    end

    context 'when the pet id is not in the database' do
      let(:pet_id) { -1 }
      let(:expected_status) { 404 }
      let(:pet_params) { { name: 'Not a Real Pet' } }
      let(:expected_content_type) { 'text/html' }

      it_behaves_like 'an expected request/response'
    end
  end
end
