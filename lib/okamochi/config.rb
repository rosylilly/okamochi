require 'hashie'
require 'okamochi'

class Okamochi::Config < Hash
  include Hashie::Extensions::MethodAccess

  def initialize(*, &block)
    super

    instance_eval(&block)
  end
end
