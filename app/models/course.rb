class Course < ApplicationRecord
    belongs_to :degree
    belongs_to :student
end
