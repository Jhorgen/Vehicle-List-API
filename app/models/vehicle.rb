class Vehicle < ApplicationRecord
scope :find_by_make, -> (make) { where("make ILIKE ?", "%#{make}%") if make.present? }
scope :find_by_model, -> (model) { where("model ILIKE ?", "%#{model}%") if model.present? }
scope :find_by_year, -> (year) { where("year = ?", "#{year}") if year.present? }
scope :find_by_trim, -> (trim) { where("trim ILIKE ?", "%#{trim}%") if trim.present? }
end
