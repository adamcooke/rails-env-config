Gem::Specification.new do |s|
  s.name        = "rails_env_config"
  s.version     = '1.0.2'
  s.authors     = ["Adam Cooke"]
  s.email       = ["adam@atechmedia.com"]
  s.homepage    = "http://adamcooke.io"
  s.licenses    = ['MIT']
  s.summary     = "A library to allow custom local environment variables to be loaded into a Rails application."
  s.description = "Loads the complete contents of config/environment.yml into ENV when a Rails application starts."
  s.files = Dir["{lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
end
