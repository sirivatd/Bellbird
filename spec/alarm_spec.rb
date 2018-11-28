require 'httparty'
require 'json'
class Alarm
    def send_push
        @urlstring_to_post = "https://bellbird.joinhandshake-internal.com/push"
        @result = HTTParty.post(@urlstring_to_post.to_str,
            :body => {:alarm_id => 1}.to_json,
            :headers => {'Content-Type' => 'application/json'})
    end
end

describe Alarm do
   context "When posting to external API" do
    it "should successfuly post" do
    alarm = Alarm.new
    success_object = {"success" => true}
    response = alarm.send_push
    expect(response).to be_truthy
    end
   end
end