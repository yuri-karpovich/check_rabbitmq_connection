require 'bunny'

begin
  if ENV['RABBITMQ_URL']
    conn = Bunny.new(ENV['RABBITMQ_URL'])
  else
    conn = Bunny.new(host: ENV['RABBITMQ_HOST'], user: ENV['RABBITMQ_USER'], pass: ENV['RABBITMQ_PASS'], vhost: ENV['RABBITMQ_VHOST'])
  end
  
  conn.start
  
  puts 'Connected to RabbitMQ successfully.'
rescue Bunny::TCPConnectionFailedForAllHosts
  puts 'Connection to RabbitMQ failed.'
ensure
  conn.close if conn && conn.open?
end
