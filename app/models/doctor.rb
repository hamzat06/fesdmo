class Doctor < ApplicationRecord
  validates_presence_of :name
  has_many :patients
  has_many :reports
end
