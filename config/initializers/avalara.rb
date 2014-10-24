Avalara.configure do |config|
  config.username = ENV['AVALARA_USERNAME']
  config.password = ENV['AVALARA_PASSWORD']
  config.endpoint = "https://development.avalara.net"
end
