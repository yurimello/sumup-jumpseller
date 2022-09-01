class TransactionsController < ApplicationController
  skip_before_action :verify_authenticity_token, if: :request_from_jumpseller?
  
  def create
    render inline: 'Received'
  end
end
