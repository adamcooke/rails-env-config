module RailsEnvConfig
  class Railtie < Rails::Railtie
    config.before_configuration do |app|
      ["environment.#{Rails.env}.yml", "environment.yml"].each do |file|
        full_path = Rails.root.join('config', file)
        if File.file?(full_path)
          RailsEnvConfig.load(full_path)
        end
      end
    end
  end
end
