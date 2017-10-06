# рабочая версия бота - запуск bundle exec ruby main.rb
require "telegram/bot"
require 'dotenv'
Dotenv.load('token.env')

def mineral
  File.open ('mineral.txt') do |file|
    lines = file.readlines
  end
end
MINERAL = mineral

def fish
  File.open ('fish.txt') do |file|
    lines = file.readlines
  end
end
FISH = fish

def motion
  File.open ('motion.txt') do |file|
    lines = file.readlines
  end
end
MOTION = motion

def landscape
  File.open ('landscape.txt') do |file|
    lines = file.readlines
  end
end
LANDSCAPE = landscape

def color
  File.open ('color.txt') do |file|
    lines = file.readlines
  end
end
COLOR = color

def bird
  File.open ('bird.txt') do |file|
    lines = file.readlines
  end
end
BIRD = bird

def animals
  File.open ('animals.txt') do |file|
    lines = file.readlines
  end
end
ANIMALS = animals


def random
  lines1 = File.read ("test.txt")
  lines1.tr(',.','').split().compact
end
RANDOM = random


def plant
  File.open ('plant.txt') do |file|
    lines = file.readlines
  end
end
PLANT = plant







Telegram::Bot::Client.run(ENV['TOKEN']) do |bot|
  bot.listen do |message|
    case message.text


    when '/start', '/start start'
      bot.api.send_message(
      chat_id: message.chat.id,
      text: "Здравствуй, #{message.from.first_name} данный бот поможет тебе в выборе темы для скетча.")

      question = 'Начать.'
      answers =
           Telegram::Bot::Types::ReplyKeyboardMarkup
             .new(keyboard: [%w(/help /sketch)], one_time_keyboard: true)
         bot.api.send_message(chat_id: message.chat.id, text: question, reply_markup: answers)



    when '/help'
      bot.api.send_message(
      chat_id: message.chat.id,
      text: "#{message.from.first_name} ты можешь использовать список комманд для помощи.
       /start возврат в главное меню бота.
       /help меню помощи и подсказок.
       /sketch выбор скетча.")

       question = 'Помощь.'
       answers =
            Telegram::Bot::Types::ReplyKeyboardMarkup
              .new(keyboard: [%w(/start /help /sketch)], one_time_keyboard: true)
          bot.api.send_message(chat_id: message.chat.id, text: question, reply_markup: answers)


    when '/sketch'
      question = 'Выберите тип скетча.'
      answers =
           Telegram::Bot::Types::ReplyKeyboardMarkup
             .new(keyboard: [%w(Животное Птица), %w(Рыба Растение), %w(Пейзаж Движение), %w(Цвет Минерал)], selective: true)
         bot.api.send_message(chat_id: message.chat.id, text: question, reply_markup: answers)

    when 'Животное'
      bot.api.send_message(
      chat_id: message.chat.id,
      text: ANIMALS.sample)

    when 'Птица'
      bot.api.send_message(
      chat_id: message.chat.id,
      text: BIRD.sample)

    when 'Рыба'
      bot.api.send_message(
      chat_id: message.chat.id,
      text: FISH.sample)


    when 'Растение'
      bot.api.send_message(
      chat_id: message.chat.id,
      text: PLANT.sample)

    when 'Пейзаж'
      bot.api.send_message(
      chat_id: message.chat.id,
      text: LANDSCAPE.sample)

    when 'Движение'
      bot.api.send_message(
      chat_id: message.chat.id,
      text: MOTION.sample)

    when 'Цвет'
      bot.api.send_message(
      chat_id: message.chat.id,
      text: COLOR.sample)

    when 'Минерал'
      bot.api.send_message(
      chat_id: message.chat.id,
      text: MINERAL.sample)

    when 'Random'
      bot.api.send_message(
      chat_id: message.chat.id,
      text: RANDOM.sample)

    else
      # bot.api.send_message(
      # chat_id: message.chat.id,
      # text: ANSWER.sample)
    end
  end
end
