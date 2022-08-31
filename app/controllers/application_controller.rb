# frozen_string_literal: true

class ApplicationController < ActionController::Base
  private
  def request_from_jumpseller?
    request.base_url.match(/jumpseller/)
  end
end
