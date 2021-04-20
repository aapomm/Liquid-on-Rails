class UserController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    @users = User.all
  end

  def show
    file = File.read('./app/views/user/show.liquid')
    template = Liquid::Template.parse(file)
    drop = UserDrop.new(@user)
    @liquid_template = template.render('user' => drop)
  end

  private
  
  def set_user
    @user = User.find(params[:id])
  end
end
