class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token, if: :request_from_jumpseller?
  
  def index;end

  def create
    redirect_to root_path
  end
end
