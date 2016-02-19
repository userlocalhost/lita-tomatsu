module Lita
  module Tomatsu
    class Action
      def to_s
        @pattern.sample
      end
    end
    class HardReject < Action
      def initialize
        @pattern = [
          '嫌でござる',
          '勘弁してくださいw',
          'ＮＯ！',
        ]
      end
    end
    class SoftReject < Action
      def initialize
        @pattern = [
          'ちょっと今手が離せません',
          'あと 10 分待ってください',
          '今ちょっと無理です',
        ]
      end
    end
    class Ack < Action
      def initialize
        @pattern = [
          'はい、なんでしょう？',
          'なんでありましょう？',
          'なんですか？',
        ]
      end
    end
    class Ice < Action
      def initialize
        @pattern = [
          'うっ...',
          'ぐ、ぐぬぬ',
          'ぱ、パワハラや',
        ]
      end
    end
  end
end
