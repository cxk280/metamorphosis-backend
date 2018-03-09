# frozen_string_literal: true

module Chat
  # Respnder triggered from within the ReceiveConsumer
  class ReceiveResponder < ApplicationResponder
    topic :receiveMessage

    # @param data [Hash] any data that we want to send
    # @note Will be serialized to json
    def respond(data)
      respond_to :chat, data
    end
  end
end
