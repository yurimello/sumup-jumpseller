# frozen_string_literal: true

# Entry point of the whole aplication
class Application
  def call(_env)
    [200, { 'Content-Type' => 'text/plain' }, ['Ok']]
  end
end
