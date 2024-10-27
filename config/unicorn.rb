# config/unicorn.rb

worker_processes ENV.fetch("WEB_CONCURRENCY") { 2 }.to_i
timeout 30
preload_app true

listen ENV.fetch("PORT") { 3000 }

before_fork do |server, worker|
  ActiveRecord::Base.connection_pool.disconnect! if defined?(ActiveRecord)
end

after_fork do |server, worker|
  ActiveRecord::Base.establish_connection if defined?(ActiveRecord)
end
