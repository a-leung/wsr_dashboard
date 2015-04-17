class MessageWorker
  include Sidekiq::Worker

  def perform()
    WebsocketRails[:worker_channel].trigger(:worker_message, Time.zone.now)
  end

end
