module Types
  class StudentType < Types::BaseObject
    field :student_id, String, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :dob, String, null: false
    field :address, String, null: false
    field :school_name, String, null: false
    field :start_date, String, null: false
    field :projected_end_date, String, null: false
    field :gpa, Float, null: false
  end
end
