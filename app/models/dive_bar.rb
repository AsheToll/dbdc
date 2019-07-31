class DiveBar < ApplicationRecord
    belongs_to :neighborhood
    has_many :reviews
    has_many :users, through: :reviews, dependent: :destroy
    has_many :bar_bands
    has_many :bands, through: :bar_bands, dependent: :destroy
    has_many :favorites
    has_many :dive_bars, through: :favorites, dependent: :destroy
end
