module RackHelper
  def get(app, uri)
    mocked_rack(app).get(uri)
  end
  
  def mocked_rack(app)
    @mocked_rack ||= Rack::MockRequest.new(app)
  end
end