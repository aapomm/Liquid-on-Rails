class UserController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    @users = User.all
  end

  def show
    @user = UserDrop.new(@user)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def template_handler
    @template_handler ||= Liquid::TemplateHandler.new(view_context)
  end
end
