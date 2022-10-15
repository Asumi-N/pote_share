class ReservationsController < ApplicationController
 
 def index
 end

 def new
    @room=Room.find(params[:reservation][:room_id])
    @reservation=Reservation.new(reservation_params)

    if @reservation.start == nil || @reservation.end == nil || @reservation.number == nil
      redirect_to room_path(@reservation.room_id)
      flash[:notice]="必須項目を入力してください"
    else
      @price=@room.price*(@reservation.end-@reservation.start).to_i
      @days=(@reservation.end-@reservation.start).to_i
    end

    if @days < 1
      redirect_to room_path(@reservation.room_id)
      flash[:notice]="終了日は開始日以降にしてください"   
    elsif @reservation.start < Date.today
      redirect_to room_path(@reservation.room_id)
      flash[:notice]="過去の日付は入力しないでください"   
    elsif @reservation.number <= 0
      redirect_to room_path(@reservation.room_id)
      flash[:notice]="人数は１人以上にしてください" 
    end
 end

 def create
    @reservation=Reservation.new(params.require(:reservation).permit(:start,:end,:number,:user_id,:room_id))
    @reservation.save
    redirect_to("/reservations/#{@reservation.id}")
 end

 def show
    @reservation=Reservation.find(params[:id])
    @room=Room.find_by(id: @reservation.room_id)
    @price=@room.price*(@reservation.end-@reservation.start).to_i
 end
    

 def edit
 end

 def update
 end

 def destroy
 end

 def reservation_params
    params.require(:reservation).permit(:start, :end, :number, :user_id, :room_id)
 end

end

