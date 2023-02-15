module Pipedrive
  class APIResponse
    class << self
      def from(response)
        new(response)
      end
    end

    def initialize(response = nil)
      @response = response
    end

    def has_more_items?
      @response.fetch(:additional_data, {}).fetch(:pagination, {}).fetch(:more_items_in_collection, false)
    end

    def next_start
      @response.fetch(:additional_data, {}).fetch(:pagination, {}).fetch(:next_start, 0)
    end

    attr_reader :response
  end
end
