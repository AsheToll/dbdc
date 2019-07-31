class Band < ApplicationRecord
    has_many :bar_bands
    has_many :dive_bars, through: :bar_bands, dependent: :destroy
end
