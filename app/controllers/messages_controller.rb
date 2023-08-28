class MessagesController < ApplicationController
  def index
    random_greeting = Message.order('RANDOM()').first
    render json: { greetings: random_greeting.content }
  end
end
