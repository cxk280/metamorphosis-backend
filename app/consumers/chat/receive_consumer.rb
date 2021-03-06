# frozen_string_literal: true

module Chat
  # Catches the received message and uses ReceiveResponder to respond on a chat topic
  class ReceiveConsumer < ApplicationConsumer
    # Increase counter and respond
    def consume
      # Just a small delay so we won't overuse the CPU
      sleep rand
      counter = params_batch.parsed.to_a.last['counter'] + 1
      respond_with('counter' => counter)
    end
  end
end
