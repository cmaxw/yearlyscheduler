class CalendarController < ApplicationController
  before_filter :authenticate_user!, except: "index"

  def index
    @year = (params[:year] || Date.today.year).to_i
    @day_labels = current_user ? current_user.date_label_strings : {}
    flash[:alert] = "Your changes will not be saved if you are not logged in" unless current_user
  end

  def update_label
    label = current_user.label_colors.where(color: params[:color]).first_or_create

    label.name = params[:name]
    label.save
    render json: {success: true}
  end

  def update_date
    date_to_edit = Date.parse("#{params[:year]}-#{params[:month]}-#{params[:day]}")
    date = current_user.date_labels.where(day: date_to_edit).first_or_create
    if params[:color].blank?
      date.destroy
    else
      label = current_user.label_colors.where(color: params[:color]).first_or_create
      date.label_color = label
      date.save
    end
    render json: {success: true}
  end
end
