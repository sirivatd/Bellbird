require 'action_view'
require 'httparty'
require 'json'

class Alarm < ApplicationRecord
    include ActionView::Helpers::DateHelper

    has_many :likes

    def num_likes
        likes.length
    end

    def age
       time_ago_in_words(alarm_date) 
    end

    def send_push
        @urlstring_to_post = "https://bellbird.joinhandshake-internal.com/push"
        @result = HTTParty.post(@urlstring_to_post.to_str,
            :body => {:alarm_id => id}.to_json,
            :headers => {'Content-Type' => 'application/json'})
    end
end
