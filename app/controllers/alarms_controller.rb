

class AlarmsController < ApplicationController
    def index
        @alarms = Alarm.all
    end

    def new
        @alarm = Alarm.new
    end

    def create
        @alarm = Alarm.new(alarm_params)
        if @alarm.save
            @alarm.send_push
            redirect_to alarms_url
        else
            flash.now[:errors] = @alarm.errors.full_messages
            render :new
        end
    end

    def alarm_params
        params.require(:alarm).permit(:description, :alarm_time, :alarm_date)
    end
end
