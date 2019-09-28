class Student < ApplicationRecord
  has_one :degrees
  has_many :courses
end
