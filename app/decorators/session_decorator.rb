class SessionDecorator < SimpleDelegator
  def self.decorate(session)
    new(session)
  end

  def store_transaction(transaction)
    self['transaction'] = cleanup_transaction_params(transaction).to_json
  end

  def fetch_transaction
    transaction = self['transaction']
    return {} if transaction.nil? || transaction.blank?

    JSON.parse(transaction)
  end

  private

  def cleanup_transaction_params(transaction)
    transaction.except('controller', 'action')
  end

  def decorated_object
    __getobj__
  end
end
