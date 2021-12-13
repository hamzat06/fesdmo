class Report < ApplicationRecord
  validates_presence_of :obesity
  validates_presence_of :degree
  validates_presence_of :recommendation
  validates_presence_of :prescription
  belongs_to :doctor
  belongs_to :patient
end
