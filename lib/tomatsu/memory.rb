module Lita
  module Tomatsu
    class Memory
      LOG_PATH = "#{ENV['HOME']}/.tomas_memory"

      def self.register(msg, user, room)
        # XXX: here is a temporary log feature
        open(LOG_PATH, 'a') {|f| f.puts "[#{Time.now}] #{user}@#{room} '#{msg}'"}
      end
    end
  end
end
