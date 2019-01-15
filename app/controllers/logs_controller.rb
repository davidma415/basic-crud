class LogsController < ApplicationController
  def index
    @log = Log.new
    @logs = Log.all.order(created_at: :desc)
  end

  def create
    @log = Log.new

    @log.name = params[:log][:name]
    @log.event_type = params[:log][:event_type]

    if @log.save
      flash[:notice] = "You have clocked #{@log.event_type}"
      redirect_to logs_url
    else
      flash[:notice] = "Failed to create a clock event"
      render :index
    end
  end
end
