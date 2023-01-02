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

    attr_reader :response
  end
end
