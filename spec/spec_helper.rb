require 'chefspec'
require 'chefspec/berkshelf'

RSpec.configure do |config|
  # Specify the path for Chef Solo file cache path (default: nil)
  config.file_cache_path = '/var/chef/cache'

  # Specify the Chef log_level (default: :warn)
  config.log_level = :error

  # Specify the operating platform to mock Ohai data from (default: nil)
  config.platform = 'centos'

  # Specify the operating version to mock Ohai data from (default: nil)
  config.version = '7.2.1511'

  # Use color output for RSpec
  config.color = true
  config.tty = true

  # Use documentation output formatter
  config.formatter = :documentation
end

at_exit { ChefSpec::Coverage.report! }
