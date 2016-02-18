module Lita
  module Tomatsu
    class Brain
      def self.neocortex(input)
        emotion = ObjectSpace.each_object(Class).select{|x| x.superclass == Tomatsu::Emotion}.find do |klass|
          klass::KEYWORD.any? do |synaps|
            input =~ /#{synaps}/
          end
        end

        if emotion != nil
          emotion.new
        end
      end

      # consider method make an Action according to input
      # @input: An order to tomas-bot
      def self.consider(input)
        case neocortex(input)
        when Tomatsu::Anger
          Tomatsu::HardReject.new
        when Tomatsu::Protect
          Tomatsu::SoftReject.new
        when Tomatsu::Notice
          Tomatsu::Ack.new
        end
      end
    end
  end
end
