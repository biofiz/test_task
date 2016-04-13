set :output, "#{path}/log/cron.log"

every 10.minutes do
  rake "fill", :environment => 'development'
end