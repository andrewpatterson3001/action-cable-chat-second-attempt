class ChatsController < ApplicationController

  before_filter :authorize


  def show
    @messages = Message.all
    @users = User.all
  end
end
