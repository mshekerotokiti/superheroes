class Hero < ApplicationRecord
    has_many :hero_powers
    has_many :powers, through: :hero_powers


    validates :name, :super_name, presence: true, uniqueness: true
end
