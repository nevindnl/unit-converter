# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

UNITS = [
  %w(minute min time 60 s),
  %w(hour h time 3600 s),
  %w(day d time 86400 s),
  ['degree', '°', 'Plane angle', Math::PI / 180, 'rad'],
  [nil, "\‘", 'Plane angle', Math::PI / 10800, 'rad'],
  ['second', "\“", 'Plane angle', Math::PI / 648000, 'rad'],
  %w(hectare ha area 10000 m²),
  %w(litre L volume 0.001 m³),
  %w(tonne t mass 1000 kg)
]

UNITS.each do |(name, symbol, unit_type, si_factor, si_unit)|
  Unit.create(
    name: name,
    symbol: symbol,
    unit_type: unit_type,
    si_factor: si_factor,
    si_unit: si_unit
  )
end
