# frozen_string_literal: true

class ApplicationController < ActionController::Base
  private

  def current_transaction
    @current_transaction ||= SessionDecorator.decorate(session).fetch_transaction
  end
end
