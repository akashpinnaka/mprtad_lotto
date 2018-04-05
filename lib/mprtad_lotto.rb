require "mprtad_lotto/version"
#require "mprtad_lotto/drawing"

begin
  require "pry"
rescue LoadError
end

module MprtadLotto
  class Drawing
    def draw
      6.times.map do
        single_draw
      end
    end

    private

    def single_draw
      rand(0..60)
    end
  end
end
