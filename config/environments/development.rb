Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = true

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log
  
  config.log_level = :error
  
  #custom show writelog
  config.log_tags = [ :uuid, lambda { |request| request.env.select {|k,v| k =~ /^HTTP_/} } ]
  
  config.logger = ActiveSupport::Logger.new(config.paths['log'].first, 1, 20 * 1024 * 1024)
  
  
  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load
 
  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = false

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = false

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = false
  
  config.sass.line_comments = false
  #turn off comment note scss file

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
end