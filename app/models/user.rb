class User < ApplicationRecord
    self.primary_key = 'email'
    has_secure_password

    has_one :student, foreign_key: 'student_id'

    validates_presence_of :name, :email, :password_digest, :student_id
    
end
