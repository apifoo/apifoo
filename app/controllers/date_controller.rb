class DateController < ApplicationController
  def show
    now = Time.now
    render json: {day: now.day, month: now.month, year: now.year, dayofweek: now.strftime("%A")}
  end
end