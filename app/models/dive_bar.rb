class DiveBar < ApplicationRecord
    belongs_to :neighborhood
    has_many :reviews
    has_many :users, through: :reviews, dependent: :destroy
    has_many :bar_bands
    has_many :bands, through: :bar_bands, dependent: :destroy
    has_many :favorites
    has_many :dive_bars, through: :favorites, dependent: :destroy

    def DiveBar.search(q)
        if q
            neighborhood = Neighborhood.find_by(name: q)
                if neighborhood
                    self.where(neighborhood_id: neighborhood)
                else
                    DiveBar.all
                end
        else
            DiveBar.all
        end
    end
end
