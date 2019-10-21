require_relative 'boot'

require 'rails/all'
require "active_storage/engine"
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Automotive
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    console do
      ActiveRecord::Base.connection
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
