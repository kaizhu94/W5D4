# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    has_many :enrollments,
      class_name: :Enrollment, #on other end of association
      foreign_key: :student_id,
      primary_key: :id

    has_many :enrolled_courses,
      through: :enrollments, #on other end of association
      source: :course
end
