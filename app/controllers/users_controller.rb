class UsersController < ApplicationController
  def index

  end

  def new

  end

  def create

  end

  def show

  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:img, :name, :introduction))
      flash[:notice] = "更新しました"
      redirect_to "/users"
    else
      render "edit"
    end
  end

  def destroy

  end

  private
  def post_params
    params.require(:user).permit(:img)
  end
end
