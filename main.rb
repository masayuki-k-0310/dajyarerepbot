require "twitter"

client = Twitter::res::Client.new do |config|
   config.consumer_key       = ENV['MY_CONSUMER_KEY']
   config.consumer_secret    = ENV['MY_CONSUMER_SECRET']
   config.access_token       = ENV['MY_ACCESS_TOKEN']
   config.acces_token_secret = ENV['MY_ACCESS_TOKEN_SECRET']
end 

stream_client = Twitter::Streaming::Client.new do |config|
  config.consumer_key       = ENV['MY_CONSUMER_KEY']
  config.consumer_secret    = ENV['MY_CONSUMER_SECRET']
  config.access_token       = ENV['MY_ACCESS_TOKEN']
  config.acces_token_secret = ENV['MY_ACCESS_TOKEN_SECRET']
end

stream_client.user do |tweet|
  if tweet.is_a?(Twitter::Tweet)
    puts(tweet.user.name)
    puts("@#{tweet.user.screen_name}")
    puts(tweet.text)
    puts("-----")
    if tweet.text == "猫"
      client.update("@#{tweet.user.screen_name}\n猫が寝込んだ！", options = {:in_reply_to_status_id => tweet.id})
    end
  end
end
