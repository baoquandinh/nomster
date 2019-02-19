class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :place
    after_create :send_comment_email

    RATINGS = {
        'one_star': "1_stars",
        'two_star': "2_stars",
        'three_star': "3_stars",
        'four_star': "4_stars",
        'five_star': "5_stars",
    }

    def humanized_rating
        RATINGS.invert[self.rating]
    end

    def send_comment_email
        NotificationMailer.comment_added(self).deliver_now
    end
end
