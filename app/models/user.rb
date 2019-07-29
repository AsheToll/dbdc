class User < ApplicationRecord
    has_many :reviews
    has_many :dive_bars, through: :reviews
end
