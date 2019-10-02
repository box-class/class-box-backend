class Degree < ApplicationRecord
  has_many :course
  belongs_to :student
end
