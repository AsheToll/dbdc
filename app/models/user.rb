class User < ApplicationRecord
    has_secure_password
    belongs_to :neighborhood
    has_many :reviews
    has_many :dive_bars, through: :reviews, dependent: :destroy
    has_many :favorites
    has_many :dive_bars, through: :favorites, dependent: :destroy
    validates :username, uniqueness: true
    validates :username, :uniqueness => {:case_sensitive => false}
    validates :name, presence: true
    validates :fav_genre, presence: true
    validates :neighborhood_id, presence: true
end