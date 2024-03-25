class RoomsController < ApplicationController
  def index
    @rooms = Room.all

  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(params.require(:room).permit(:name, :introduction, :fee, :address, :img, :user_id))
    if @room.save
      flash[:notice] = "施設を新規登録しました"
      redirect_to "/users"
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
    @rooms = @user.rooms
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    if @room.update(params.require(:room).permit(:img, :name, :introduction, :fee, :address))
      flash[:notice] = "更新しました"
      redirect_to "/users"
    else
      render "edit"
    end
  end

  def destroy

  end
end
