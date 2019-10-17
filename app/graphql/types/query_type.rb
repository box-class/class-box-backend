module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :student,
      Types::StudentType,
      null: false,
      description: "Returns current student information"
    def student
      currentUser = context[:current_user]
      Student.find_by(student_id: currentUser.student_id)
    end

  end
end
