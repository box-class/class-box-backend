class Student < ApplicationRecord
  self.primary_key = :studentId
  has_one :degree
end
