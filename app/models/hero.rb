class Hero < ApplicationRecord
    validates :name, :super_power, :enjoys, :image, presence: true
    validates :enjoys, length: { minimum:10 }
    
end
