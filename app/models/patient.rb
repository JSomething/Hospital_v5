class Patient < ActiveRecord::Base

  belongs_to :doctor
  has_many :patient_meds
  has_many :medications, through: :patient_meds
  has_many :nurses, as: :nurseable

  BLOOD_OPTIONS = [
    "A",
    "A-",
    "A+",
    "B",
    "B-",
    "B+",
    "O",
    "O-",
    "O+"
  ]
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :dob, presence: true
  validates :description, presence: true
  validates :gender, presence: true
  validates :blood_type, presence: true
end
