class TransactionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    SessionDecorator.decorate(session).store_transaction(params)
    return render inline: 'ok' if current_transaction.valid?
    render json: current_transaction.errors, status: :unprocessable_entity
  end
end
