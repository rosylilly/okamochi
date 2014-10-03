require 'okamochi/builder'

class Okamochi::Builder::Null
  def initialize(config)
    @config = config
  end

  def prepare
  end

  def run(*)
  end

  def cleanup(*)
  end

  def cancel
  end
end
