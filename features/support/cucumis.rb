require 'cucumis'
require "cucumis/#{ENV.fetch('CUCUMIS', 'webkit')}"

if defined?(Capybara::Webkit)
  Capybara::Webkit.configure do |config|
    config.block_unknown_urls
    config.ignore_ssl_errors
    config.raise_javascript_errors = true
  end
end
