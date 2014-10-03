require 'okamochi/version'
require 'okamochi/cli'
require 'okamochi/builder'

module Okamochi
  def self.resolve_const(name)
    names = classify(name.to_s).split('::')
    names.reduce(self) do |mod, const|
      mod.const_get(classify(const.to_s))
    end
  rescue NameError
    require "okamochi/#{underscore(name.to_s)}"
    resolve_const(name)
  end

  def self.classify(name)
    name.gsub('-', '::').gsub(/(^|:|_)([a-z])/) do |_|
      last_match = Regexp.last_match
      last_match[1].to_s.sub('_', '') + last_match[2].to_s.upcase
    end
  end

  def self.underscore(name)
    name = name.gsub('::', '/').gsub(/[A-Z]+/) do |match|
      "_#{match.downcase}"
    end
    name.gsub(/(^|\/)_/, '\1')
  end
end
