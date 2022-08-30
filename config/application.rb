class Application
  def call(env)
    [200, { 'Content-Type' => 'text/plain' }, ['Ok']]
  end
end