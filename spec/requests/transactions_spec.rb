require 'rails_helper'

RSpec.describe "Transactions", type: :request do
  describe "POST /transactions" do
    it "responds with received", :aggregate_failures do
      post transactions_path
      expect(response).to have_http_status(200)
      expect(response.body).to eq('Received')
    end
  end
end
