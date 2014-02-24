### Devise includes some test helpers for functional specs. In order to use them, we need the following configuration:

RSpec.configure do |config|
  config.include Devise::TestHelpers, type: :controller
end


########
# Read-more-on: https://github.com/plataformatec/devise#test-helpers
########
