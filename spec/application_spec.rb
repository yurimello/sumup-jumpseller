# frozen_string_literal: true

require_relative './spec_helper'
require_relative '../config/application'

describe Application do
  subject(:app) { described_class.new }

  describe 'GET /' do
    let(:path) { '/' }
    let(:request) {  get(app, path) }

    let(:response) { app.call(request) }
    let(:response_code) { response.first }
    let(:response_body) { response.last.first }

    it 'returns ok response' do
      expect(response_code).to eq(200)
      expect(response_body).to eq('Ok')
    end
  end
end
