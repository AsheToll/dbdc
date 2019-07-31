class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :dive_bar
end
