class Patient < ApplicationRecord
  validates_presence_of :surname
  validates_presence_of :other_names
  validates_presence_of :gender
  validates_presence_of :marital_status
  validates_presence_of :phone_number
  validates_presence_of :date_of_birth
  validates_presence_of :address
  validates_presence_of :email, uniqueness: true
  validates_presence_of :occupation
  validates_presence_of :religion
  validates_presence_of :next_of_kin
  belongs_to :doctor
  has_many :reports
end
