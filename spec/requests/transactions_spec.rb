require 'rails_helper'

RSpec.describe 'Transactions', type: :request do
  describe 'POST /transactions' do
    subject(:transaction) { build(:transaction) }

    it 'responds with ok', :aggregate_failures do
      post transactions_path(transaction.to_h)
      expect(response).to have_http_status(200)
      expect(response.body).to eq('ok')
    end

    context 'with invalid transaction' do
      subject(:transaction) { build(:transaction, :without_x_signature) }

      it 'responds with unprocessable entity', :aggregate_failures do
        post transactions_path(transaction.to_h)
        expect(response).to have_http_status(422)
        expect(JSON.parse(response.body).keys).to include('x_signature')
      end
    end
  end
end
