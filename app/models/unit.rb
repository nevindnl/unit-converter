class Unit < ActiveRecord::Base
  validates :symbol, :unit_type, :si_unit, :si_factor, presence: true
  validates :symbol, uniqueness: true
end
