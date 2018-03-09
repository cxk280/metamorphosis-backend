# frozen_string_literal: true

# Namespace for everything related to chat
module Send
  # Catches the sent message and uses SendResponder to respond on a chat topic
  class SendConsumer < ApplicationConsumer
    # We increase the pings counter and respond
    def consume
      counter = params_batch.parsed.last['counter'] + 1
      # The initial ping needs to be triggered via the rake task
      respond_with(counter: counter)
    end
  end
end
