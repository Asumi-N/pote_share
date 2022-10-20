class HomeController < ApplicationController
  def top
    @q = Room.ransack(params[:q])
    @results = @q.result(distinct: true)
  end
end
