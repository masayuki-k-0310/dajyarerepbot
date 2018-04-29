require "twitter"
ENV['SSL_CERT_FILE'] = File.expand_path('./cacert.pem')

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
    if tweet.text == "布団"
      client.update("@#{tweet.user.screen_name}\n布団が吹っ飛んだ！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "レモン"
      client.update("@#{tweet.user.screen_name}\nレモンの入れもん！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "手"
      client.update("@#{tweet.user.screen_name}\n手貸してぇ！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "大野"
      client.update("@#{tweet.user.screen_name}\n大野がOh No！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "月"
      client.update("@#{tweet.user.screen_name}\n月に着きました！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "カワウソ"
      client.update("@#{tweet.user.screen_name}\nカワウソかわいそう！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "トンビ"
      client.update("@#{tweet.user.screen_name}\nトンビが飛んびました！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "喧嘩"
      client.update("@#{tweet.user.screen_name}\n喧嘩していけんか！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "ジョニー"
      client.update("@#{tweet.user.screen_name}\nジョニーが便所に行った！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "私"
      client.update("@#{tweet.user.screen_name}\n私に渡して！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "食器"
      client.update("@#{tweet.user.screen_name}\n食器が割れてショッキング！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "プリン"
      client.update("@#{tweet.user.screen_name}\nプリンは栄養たっぷりん！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "みんな"
      client.update("@#{tweet.user.screen_name}\nみんな私のこと見んな！", options = {:in_reply_to_status_id => tweet.id})
    end      
    if tweet.text == "女子"
      client.update("@#{tweet.user.screen_name}\n女子が使う助詞！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "来た"
      client.update("@#{tweet.user.screen_name}\n北に来た！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "帰宅"
      client.update("@#{tweet.user.screen_name}\n北区に帰宅！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "草"
      client.update("@#{tweet.user.screen_name}\n草が腐った！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "欲しい"
      client.update("@#{tweet.user.screen_name}\n星が欲しいな！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "使った"
      client.update("@#{tweet.user.screen_name}\nカッターを使った―！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "トイレ"
      client.update("@#{tweet.user.screen_name}\nトイレに行っといれ！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "俺"
      client.update("@#{tweet.user.screen_name}\n俺が飲んだカフェオレ！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "彼"
      client.update("@#{tweet.user.screen_name}\n彼が好きなカレー！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "利根川歩行"
      client.update("@#{tweet.user.screen_name}\n僕は嫌だぁぁぁぁぁぁぁぁぁぁぁぁぁぁぁ！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "サッカー"
      client.update("@#{tweet.user.screen_name}\nあいつがサッカー？まさっかー！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "まいやん"
      client.update("@#{tweet.user.screen_name}\nまいやんは神！！！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "リア充"
      client.update("@#{tweet.user.screen_name}\n爆発しろぉぉぉぉぉぉぉぉぉぉぉぉぉぉぉ！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "いくちゃん"
      client.update("@#{tweet.user.screen_name}\nいやらしい目で見なければ！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "蘭世"
      client.update("@#{tweet.user.screen_name}\n蘭世の可愛さ止まらんぜ！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "馬"
      client.update("@#{tweet.user.screen_name}\n馬がうまい！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "アイス"
      client.update("@#{tweet.user.screen_name}\nアイスを愛する！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "野獣先輩"
      client.update("@#{tweet.user.screen_name}\nぬあーっ！！！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "委員会"
      client.update("@#{tweet.user.screen_name}\n委員会でそんなことしていいんかい！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "忍者"
      client.update("@#{tweet.user.screen_name}\n忍者って何人じゃ？", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "カエル"
      client.update("@#{tweet.user.screen_name}\nカエルがひっくり返る！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "さんま"
      client.update("@#{tweet.user.screen_name}\nサンマは三万円！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "AKG"
      client.update("@#{tweet.user.screen_name}\nReborn！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "タイヤ"
      client.update("@#{tweet.user.screen_name}\nタイヤを使いたいや！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "小坂"
      client.update("@#{tweet.user.screen_name}\nこーづまの彼女に手を出すなぁぁぁぁぁ！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "菜緒"
      client.update("@#{tweet.user.screen_name}\nこーづまの彼女に手を出すなぁぁぁぁぁ！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "みたらし団子"
      client.update("@#{tweet.user.screen_name}\nみたらし団子を見たらしい！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "こーづま"
      client.update("@#{tweet.user.screen_name}\n呼んだ？こーづまだよ！@masayuki_k_0310", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "バスラ"
      client.update("@#{tweet.user.screen_name}\n行きたい行きたい！", options = {:in_reply_to_status_id => tweet.id})
    end
    if tweet.text == "安倍"
      client.update("@#{tweet.user.screen_name}\n安倍晋三のやぁべぇ心臓！", options = {:in_reply_to_status_id => tweet.id})
    end
  end
end