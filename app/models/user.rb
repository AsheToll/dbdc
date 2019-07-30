class User < ApplicationRecord
    has_many :reviews
    has_many :dive_bars, through: :reviews
    validates :username, uniqueness: true
    validates :username, :uniqueness => {:case_sensitive => true}
    validates :name, presence: true
    validates :fav_genre, presence: true
    validates :neighborhood, presence: true
end
