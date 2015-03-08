module Ruboty
  module Handlers
    class Shinchoku < Base
      env :TUMBLR_API_KEY, 'Tumblr API Key'

      on(
        /.*(進捗).*/,
        name: 'shinchoku',
        description: 'Get random image from shinchokudodesuka.tumblr.com',
        all: true
      )

      def shinchoku(message)
        Ruboty::Shinchoku::Actions::GetRandomImage.new(message).call
      end
    end
  end
end
