require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
Dir.glob('test/support/*').each { |p| require Rails.root + p }

class ActiveSupport::TestCase

end

require 'minitest/reporters'
if ENV['MINITEST_REPORT_FORMAT'].blank?
  Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
else
  Minitest::Reporters.use! ENV['MINITEST_REPORT_FORMAT'].constantize.new
end
