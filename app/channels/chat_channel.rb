# Be sure to restart your server when you modify this file. Action Cable runs in an EventMachine loop that does not support auto reloading.
class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_channel"
  end

  def speak(data)
    Message.create!(content: data['message'], user_id: current_user['id'])
    ActionCable.server.broadcast('chat_channel', message: render_message(data['message'], current_user))
  end

  private

  def render_message(my_message, user_info)
    ApplicationController.render(partial: 'messages/message', locals: {message: my_message, username: user_info['email']})
  end
end
