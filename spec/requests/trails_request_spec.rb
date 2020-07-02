require 'rails_helper'

RSpec.describe "Trails", type: :request do
  describe 'GET #index' do
    before(:example) do
      # Arrange
      @first_trail = create(:trail)
      @last_trail = create(:trail)

      # Act
      get '/trails'
      @json_response = JSON.parse(response.body)
    end
    
    it 'returns http success code' do
      expect(response).to have_http_status(:success)
    end

    it 'JSON response contains the correct number of entries' do
      expect(@json_response['trails'].count).to eq(2)
    end

    it 'JSON response body contains the expected attributes' do
      expect(@json_response['trails'][0]).to include({
        'id' => @first_trail.id,
        'name' => @first_trail.name,
        'difficulty' => @first_trail.difficulty
      })
    end

  end
end
