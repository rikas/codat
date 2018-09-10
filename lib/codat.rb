# frozen_string_literal: true

require 'codat/version'
require 'codat/configuration'

module Codat
  module_function

  BASE_URLS = {
    production: 'https://api.codat.io/',
    uat: 'https://api-uat.codat.io/'
  }.freeze

  def configure
    yield(configuration)
  end

  def configuration
    @configuration ||= Configuration.new
  end
end
