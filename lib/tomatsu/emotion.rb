module Lita
  module Tomatsu
    class Emotion
      KEYWORD = []
    end
    class Anger < Emotion
      KEYWORD = ['しろ$', 'るな$', 'んな$', 'れ$', '!$', '！$']
    end
    class Protect < Emotion
      KEYWORD = ['こい$', '出せ$']
    end
    class Notice < Emotion
      KEYWORD = ['おい$']
    end
  end
end
