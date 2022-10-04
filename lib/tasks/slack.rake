# namespace :slack do
#   desc "TODO"
#   task run_notifications: :environment do
#   end

# end


require 'httparty'
require 'dotenv/tasks'

namespace :slack do
  desc "Send hourly remonders to drink water in Slack"
  task :run_notifications => :environment do
  HTTParty.post(ENV["WEBHOOK_URL"], :body => {
                                    :channel  => '#general',
                                    :username => 'Slack Bot',
                                    :text     => 'Time to take a glass of water."'
                                    }.to_json)
    end
end
