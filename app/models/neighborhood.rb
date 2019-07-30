class Neighborhood < ApplicationRecord
    has_many :dive_bars
    has_many :users
end
