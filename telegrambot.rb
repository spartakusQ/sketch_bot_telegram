module Telebot
  class TelegramBot
    def animals
      File.open ('lib/animals.txt') do |file|
        lines = file.readlines
      end
    end
    
    def bird
      File.open ('lib/bird.txt') do |file|
        lines = file.readlines
      end
    end

    def fish
      File.open ('lib/fish.txt') do |file|
        lines = file.readlines
      end
    end

    def plant
      File.open ('lib/plant.txt') do |file|
        lines = file.readlines
      end
    end

    def landscape
      File.open ('lib/landscape.txt') do |file|
        lines = file.readlines
      end
    end

    def motion
      File.open ('lib/motion.txt') do |file|
        lines = file.readlines
      end
    end
    def color
      File.open ('lib/color.txt') do |file|
        lines = file.readlines
      end
    end

    def mineral
      File.open ('lib/mineral.txt') do |file|
        lines = file.readlines
      end
    end

    # def random
    #   lines1 = File.read ("test.txt")
    #   lines1.tr(',.','').split().compact
    # end
  end

  sketch = TelegramBot.new

  ANIMALS = sketch.animals
  BIRD = sketch.bird
  FISH = sketch.fish
  PLANT = sketch.plant
  LANDSCAPE = sketch.landscape
  MOTION = sketch.motion
  COLOR = sketch.color
  MINERAL = sketch.mineral
  # RANDOM = sketch.random
end
