$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'middleman-core'
require 'erb'
require 'tilt'
require 'middleman/picture_output'
require 'helpers/fixtures'

RSpec.configure do |config|
  include Middleman::Helpers::Fixtures
end
