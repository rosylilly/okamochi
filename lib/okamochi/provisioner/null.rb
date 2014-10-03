require 'okamochi/provisioner'

class Okamochi::Provisioner::Null
  def initialize(config)
    @config = config
  end

  def prepare
  end

  def provision(*)
  end
end
