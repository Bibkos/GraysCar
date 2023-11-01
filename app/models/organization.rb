class Organization < ApplicationRecord
  validates :name, presence: :true, length: {minimum:2}
  validates :taxpayer_identification_number, presence: :true, length: {minimum:2}
end
