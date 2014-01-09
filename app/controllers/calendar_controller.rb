class CalendarController < ApplicationController
  def index
    @year = (params[:year] || Date.today.year).to_i
  end
end
