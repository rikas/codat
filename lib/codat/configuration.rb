# frozen_string_literal: true

module Codat
  class Configuration
    attr_accessor :api_key, :environment

    def initialize
      @api_key = ''
      @environment = :uat # can be either :uat or :production
    end
  end
end
