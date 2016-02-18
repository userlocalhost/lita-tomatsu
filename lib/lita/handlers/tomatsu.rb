module Lita
  module Handlers
    class Tomatsu < Handler
      route(/^(.*)$/) do |resp|
        input_str = resp.matches.first.first

        action = Lita::Tomatsu::Brain.consider(input_str)
        if action != nil
          resp.reply(action.to_s)
        end
      end

      Lita.register_handler(self)
    end
  end
end
