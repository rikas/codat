# frozen_string_literal: true

require 'codat/version'
require 'codat/configuration'

module Codat
  module_function

  def configure
    yield(configuration)
  end

  def configuration
    @configuration ||= Configuration.new
  end
end
