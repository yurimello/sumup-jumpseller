class TransactionsController < ApplicationController
  def create
    render inline: 'Received'
  end
end
