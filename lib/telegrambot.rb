module Telebot
  class TelegramBot
    def animals
      File.open ('dict/animals.txt') do |file|
        lines = file.readlines
      end
    end

    def bird
      File.open ('dict/bird.txt') do |file|
        lines = file.readlines
      end
    end

    def fish
      File.open ('dict/fish.txt') do |file|
        lines = file.readlines
      end
    end

    def plant
      File.open ('dict/plant.txt') do |file|
        lines = file.readlines
      end
    end

    def landscape
      File.open ('dict/landscape.txt') do |file|
        lines = file.readlines
      end
    end

    def motion
      File.open ('dict/motion.txt') do |file|
        lines = file.readlines
      end
    end
    def color
      File.open ('dict/color.txt') do |file|
        lines = file.readlines
      end
    end

    def mineral
      File.open ('dict/mineral.txt') do |file|
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
