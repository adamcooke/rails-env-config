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
      true
    else
      false
    end
  end

end
