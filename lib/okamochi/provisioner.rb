require 'okamochi'

module Okamochi::Provisioner
  def self.new(name, config)
    Okamochi.resolve_const("Provisioner::#{name}").new(config)
  end
end
