class ChatsController < ApplicationController
  before_action :set_chat, only: [:show, :update, :destroy]

  # GET /chats
  def index
    @chats = Chat.joins(:application).where(applications: { token: params[:application_token] })

    render json: @chats
  end

  # GET /chats/1
  def show
    render json: @chat
  end

  # POST /chats
  def create
    application = Application.find_by(token: params[:application_token])
    data = chat_params
    data["number"] = application.chats.count + 1
    @chat = application.chats.create(data)
    render json: @chat
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_chat
    @chat = Chat
      .joins(:application)
      .find_by(number: params[:id], applications: { token: params[:application_token] })
  end

  # Only allow a trusted parameter "white list" through.
  def chat_params
    params.require(:chat).permit(:name)
  end
end
