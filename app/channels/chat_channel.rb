# Be sure to restart your server when you modify this file. Action Cable runs in an EventMachine loop that does not support auto reloading.
class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_channel"
  end

  def speak(data)
    Message.create!(content: data['message'])

    p '*'*100
    p data
    ActionCable.server.broadcast('chat_channel', message: render_message(data['message']))
    p '*'*100
  end

  private

  def render_message(my_message)
    p '~*~'* 100
    p my_message
    ApplicationController.render(partial: 'messages/message', locals: {message: my_message})
  end
end
