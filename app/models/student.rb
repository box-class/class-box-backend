class Student < ApplicationRecord
  self.primary_key = :student_id
  has_one :degree
end
