require 'thor'
require 'okamochi'

class Okamochi::CLI < Thor
  class_option :color, type: :boolean, default: true

  def initialize(*args)
    super
  end

  desc "version", "Print version"
  def version
    puts "okamochi v#{Okamochi::VERSION}"
  end
end
