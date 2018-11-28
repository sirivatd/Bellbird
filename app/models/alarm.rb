class Alarm < ApplicationRecord
    has_many :likes

    def num_likes
        self.likes.length
    end
end
