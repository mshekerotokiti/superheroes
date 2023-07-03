class HeroPower < ApplicationRecord
    belongs_to :hero
    belongs_to :power
  
    validates :strength,  inclusion: { in: %w(Strong Weak Average),
     message: "%{value} is not valid, please choose either Strong, Weak, or Average" }
    validates :hero_id, presence: true
    validates :power_id, presence: true
end
