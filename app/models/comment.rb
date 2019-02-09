class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :place

    RATINGS = {
        'one_star': "1_stars",
        'two_star': "2_stars",
        'three_star': "3_stars",
        'four_star': "4_stars",
        'five_star': "5_stars",
    }
end
