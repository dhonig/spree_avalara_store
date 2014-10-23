# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Spree::Core::Engine.load_seed if defined?(Spree::Core)
Spree::Auth::Engine.load_seed if defined?(Spree::Auth)


use_codes = {
  "A" => "Federal government",
  "B" => "State government",
  "C" => "Tribe/Status Indian/Indian Band",
  "D" => "Foreign diplomat",
  "E" => "Charitable or benevolent organization",
  "F" => "Religious or educational organization",
  "G" => "Resale",
  "H" => "Commercial agricultural production",
  "I" => "Industrial production/manufacturer",
  "J" => "Direct pay permit",
  "K" => "Direct mail",
  "L" => "Other",
  "N" => "Local government",
  "P" => "Commercial aquaculture (Canada only)",
  "Q" => "Commercial fishery (Canada only)",
  "R" => "Non-resident (Canada only)"
}

use_codes.each do |key, value|
  Spree::AvalaraUseCodeItem.create(use_code: key, use_code_description: value)
end