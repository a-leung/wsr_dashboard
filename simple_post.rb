require 'httparty'

SERVER_BASE = 'http://localhost:3000'

while (1)
  HTTParty.post("#{SERVER_BASE}/dashboard")
  sleep(5)
end
