require 'yaml'
require 'rails_env_config/railtie'

module RailsEnvConfig

  #
  # Load some environment variables from a given path
  #
  def self.load(path)
    if File.exist?(path)
      YAML.load(File.open(path)).each do |key, value|
        ENV[key.to_s] = value
      end
      callbacks.each(&:call)
      @loaded = true
    else
      false
    end
  end

  def self.callbacks
    @callbacks ||= []
  end

  def self.callback(&block)
    if @loaded
      block.call
    else
      self.callbacks << block
    end
  end

end
