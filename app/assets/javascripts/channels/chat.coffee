App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#messages').first().after(data.message)

  speak: (mesg) ->
    @perform 'speak', message: mesg

$(document).on 'keypress', '[data-behavior~=chat_speaker]', (event) ->
  if event.keyCode is 13
    App.chat.speak(event.target.value)
    event.target.value = ''
    event.preventDefault()