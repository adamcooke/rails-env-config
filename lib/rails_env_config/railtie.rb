module RailsEnvConfig
  class Railtie < Rails::Railtie
    initializer 'rails_env_config.initializer' do |app|
      RailsEnvConfig.load(Rails.root.join('config', 'environment.yml'))
    end
  end
end
