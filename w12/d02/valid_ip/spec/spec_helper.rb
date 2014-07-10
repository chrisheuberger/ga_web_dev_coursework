RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.formatter = :documentation  # :progress, :html, :textmate
  config.fail_fast = false
  config.order = 'random'
end
