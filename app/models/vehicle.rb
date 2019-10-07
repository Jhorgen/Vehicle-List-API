class Vehicle < ApplicationRecord
scope :find_by_make, -> (make) { where("make ILIKE ?", "%#{make}%") if make.present? }
end
