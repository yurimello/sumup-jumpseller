class TransactionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    SessionDecorator.decorate(session).store_transaction(params)
    render inline: current_transaction.to_json
  end
end
