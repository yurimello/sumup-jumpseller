require 'rails_helper'

RSpec.describe 'Transactions', type: :request do
  describe 'POST /transactions' do
    subject(:transaction) { { transaction: 'request' } }
    it 'responds with received', :aggregate_failures do
      post transactions_path(transaction)
      expect(response).to have_http_status(200)
      expect(response.body).to eq(transaction.to_json)
    end
  end
end
