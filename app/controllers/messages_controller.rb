class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :update, :destroy]

  # GET /messages
  def index
    @messages = Message
      .joins(:chat)
      .where(
        chats: {
          number: params[:chat_number],
          application: Application.find_by(token: params[:application_token]),
        },
      )

    render json: @messages
  end

  # GET /messages/1
  def show
    render json: @message
  end

  # POST /messages
  def create
    chat = Chat
      .joins(:application)
      .find_by(
        number: params[:chat_number],
        applications: { token: params[:application_token] },
      )
    puts chat
    data = message_params
    data["number"] = chat.messages.count + 1
    @message = chat.messages.create(data)
    render json: @message
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_message
    @message = Message
      .joins(:chat)
      .where(
        number: params[:number],
        chats: {
          number: params[:chat_number],
          application: Application.find_by(token: params[:application_token]),
        },
      )
  end

  # Only allow a trusted parameter "white list" through.
  def message_params
    params.require(:message).permit(:text)
  end
end
