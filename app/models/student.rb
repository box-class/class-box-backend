class Student < ApplicationRecord
  self.primary_key = :studentId
  belongs_to :user
  has_one :degree
end
