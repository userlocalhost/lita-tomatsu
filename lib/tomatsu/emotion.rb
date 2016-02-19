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
    class Depress < Emotion
      KEYWORD = ['だまれ$', '黙れ$', 'うるさい$', '^こら', '^コラ']
    end
  end
end
