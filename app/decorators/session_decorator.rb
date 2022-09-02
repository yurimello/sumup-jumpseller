class SessionDecorator < SimpleDelegator
  def self.decorate(session)
    new(session)
  end

  def store_transaction(transaction)
    self['transaction'] = whitelisted_params(transaction).to_json
  end

  def fetch_transaction
    transaction = self['transaction']
    return {} if transaction.nil? || transaction.blank?

    Transaction.new JSON.parse(transaction)
  end

  private

  def whitelisted_params(transaction)
    transaction.permit(*Transaction::ATTRIBUTES)
  end

  def decorated_object
    __getobj__
  end
end
