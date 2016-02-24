module Lita
  module Handlers
    class Tomatsu < Handler
      route(/^(.*)$/) do |resp|
        if resp.message.command?
          Lita::Tomatsu::Memory.register(resp.message.body, resp.user.name, resp.room.name)

          action = Lita::Tomatsu::Brain.consider(resp.message.body)
          if action != nil
            resp.reply(action.to_s)
          end
        end
      end

      Lita.register_handler(self)
    end
  end
end
