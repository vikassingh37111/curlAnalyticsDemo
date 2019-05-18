class GraphChannel < ApplicationCable::Channel
  def subscribed
    stream_from "graph"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
