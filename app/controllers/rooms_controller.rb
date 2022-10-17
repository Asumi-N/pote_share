class RoomsController < ApplicationController
  
  def new
    @room=Room.new
  end

  def create
    @room = Room.new(params.require(:room).permit(:name, :introduce, :price, :address, :image, :user_id))
    if @room.save
      redirect_to("/rooms/#{@room.id}")
    else
      render("rooms/new")
   end
  end

  def show
    @room = Room.find(params[:id])
    @reservation = Reservation.new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def posts
    @rooms=Room.where(user_id: current_user.id)
  end
end
