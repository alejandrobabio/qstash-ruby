# frozen_string_literal: true

# https://upstash.com/docs/qstash/api/messages/get
module QStash
  module Message
    class Get
      include QStash::Callable
      include QStash::Requestable
      requestable method: :get

      attr_reader :message_id, :headers

      def initialize(message_id, headers: {})
        @message_id = message_id
        @headers = headers
      end

      private

      def path_segment
        [Endpoints::GET_ENDPOINT, message_id].join("/")
      end

      def body
        nil
      end
    end
  end
end
