class LikesController < ApplicationController
    def create
        @like = Like.new(like_params)
        if @like.save

        else
            flash[:errors] = @like.errors.full_messages
        end
        redirect_to alarms_url
    end

    def new
        @like = Like.new
    end

    def like_params
        params.require(:like).permit(:alarm_id)
    end
end
