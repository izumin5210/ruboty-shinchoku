module Ruboty
  module Shinchoku
    module Actions
      class GetRandomImage < Ruboty::Actions::Base
        TUMBLR_URL = 'shinchokudodesuka.tumblr.com'

        def call
          message.reply client.random_image(TUMBLR_URL)
        end

        private

        def configure
          Tumblr.configure do |c|
            c.consumer_key = tumblr_api_key
          end
        end

        def client
          configure
          Tumblr::Client.new
        end

        def tumblr_api_key
          ENV['TUMBLR_API_KEY']
        end
      end
    end
  end
end
