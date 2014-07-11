# Rails Env Config

This gem provides support for importing local environment variables. With the advent of platform hosting services, the convention is now to store configuration in system environment variables which applications access using ENV. 

This is great when you have a platform which sets these for you automatically but not so good in development.

This gem allows you to define environment variables in a `config/environment.yml` file and these will then be loaded into ENV each time your application starts.

## Installation

Enabling this is easy, just add it to your Gemfile and run `bundle`.

```ruby
gem 'rails_env_config', '~> 1.0'
```

Once installed, you can create a yaml file containing your local environment variables.

```yaml
# Some Viaduct keys go here
VIADUCT_OAUTH_KEY: abc123abc123abc123
VIAUDCT_OAUTH_SECRET: sadfjhu4hdjuhsdufghduih

# Rails session secrets
SECRET_KEY_BASE: 4fba605ff1f4c8d35d49feb5ebe0cea28dd27f40e104e46e85c1c408a28c730d83c31d77e4691c3dc4e841480ab72c9b143415deb86c6fac164b1a72eb9e1205
```

Be sure that you don't commit this file into your repository. It should only be used for setting configuration for development use.

```bash
echo 'config/environment.yml' >> .gitignore
```

## That's it!

Simple, huh?
