# frozen_string_literal: true

module Send
  # Responder triggered from within the SendConsumer
  class SendResponder < ApplicationResponder
    topic :chat

    # @param data [Hash] any data that we want to send
    # @note Will be serialized to json
    def respond(data)
      respond_to :chat, data
    end
  end
end
