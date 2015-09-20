## README

This project is based on Railscasts #327 MiniTest with Rails (revised), but time is passing by, some gems are deprecated, some are born.

## Important Code

```ruby

ENV['RAILS_ENV'] = 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'minitest/autorun'
require 'capybara/rails'
require 'active_support/testing/setup_and_teardown'
require "minitest/reporters"

#https://github.com/kern/minitest-reporters

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class IntegrationTest < Minitest::Spec
  include Rails.application.routes.url_helpers
  include Capybara::DSL
  register_spec_type(/integration$/, self)
end

class HelperTest < Minitest::Spec
  include ActiveSupport::Testing::SetupAndTeardown
  include ActionView::TestCase::Behavior
  register_spec_type(/Helper$/, self)
end

```
