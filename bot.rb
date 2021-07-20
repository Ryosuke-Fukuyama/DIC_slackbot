require "slack-notify"
require 'clockwork'

require 'active_support/time'

# require “slack”
module Clockwork
  # ここに、「どれくらいの周期で処理をするのか？」というClockworkのメソッドを記述します
  every(3.minutes, 'test') do
    # ここに、slackで一定時間ごとに送りたい処理と設定を書き込みます
    # curl -X POST --data-urlencode "payload={"text": "ok!!!!" }
    notifier = SlackNotify::Client.new(webhook_url: 'https://hooks.slack.com/services/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')
    notifier.notify "ok!!!!"
  end
end