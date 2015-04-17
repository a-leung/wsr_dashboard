class DashboardController < ApplicationController
  def index
  end

  def update
    MessageWorker.perform_async
    WebsocketRails[:update_channel].trigger(:update_message, Time.zone.now)
  end
end
