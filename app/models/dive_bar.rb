class DiveBar < ApplicationRecord
    belongs_to :neighborhood
    has_many :reviews
    has_many :users, through: :reviews
    has_many :bar_bands
    has_many :bands, through: :bar_bands
end
