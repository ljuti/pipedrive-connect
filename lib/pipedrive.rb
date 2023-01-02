# frozen_string_literal: true

require "logger"
require "faraday"
require "json"

# Version
require "pipedrive/version"

# API operations
require "pipedrive/api_operations/request"
require "pipedrive/api_operations/create"
require "pipedrive/api_operations/update"
require "pipedrive/api_operations/delete"
require "pipedrive/api_response"

# Support classes
require "pipedrive/resource"
require "pipedrive/errors"
require "pipedrive/util"
require "pipedrive/fields"
require "pipedrive/merge"

# Named API Resources
require "pipedrive/resources"

module Pipedrive
  BASE_URL = "https://api.pipedrive.com/v1"

  class << self
    attr_accessor :api_key,
                  :logger,
                  :debug,
                  :debug_http,
                  :debug_http_body,
                  :treat_no_content_as_not_found
  end

  @logger = Logger.new(STDOUT)
end
