require 'okamochi'

module Okamochi::Builder
  def self.new(name, config)
    Okamochi.resolve_const("Builder::#{name}").new(config)
  end
end
