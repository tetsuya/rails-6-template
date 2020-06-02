require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
# require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
# require "action_mailbox/engine"
# require "action_text/engine"
require "action_view/railtie"
# require "action_cable/engine"
# require "sprockets/railtie"
# require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module SampleApp
  class Application < Rails::Application
    config.active_record.default_timezone = :local
    config.generators do |generate|
      generate.helper false
      generate.javascripts false
      generate.routing_specs false
      generate.stylesheets false
      generate.system_tests = nil
      generate.test_framework :rspec
      generate.view_specs false
    end
    config.load_defaults 6.0
    config.time_zone = "Tokyo"
  end
end
