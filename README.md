# BELLBIRD

Named after the bird, Bellbird allows users to create, view, and upvote various alarms.

Push notifications are handled through an external API

## Push Notifications

Credit to Handshake
(https://bellbird.joinhandshake-internal.com/push)

The API call is handled with Httparty
```
def send_push
        @urlstring_to_post = "https://bellbird.joinhandshake-internal.com/push"
        @result = HTTParty.post(@urlstring_to_post.to_str,
            :body => {:alarm_id => id}.to_json,
            :headers => {'Content-Type' => 'application/json'})
    end
```

## Usage

First install bundles,
```
$ bundle install
```

Start local rails server
```
$ rails server
```

## Credits
The following packages/libraries were used in the development of Bellbird
* [Handshake](https://www.joinhandshake.com)
* [CSS Reset](https://meyerweb.com/eric/tools/css/reset/)
