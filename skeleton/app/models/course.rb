# == Schema Information
#
# Table name: courses
#
#  id            :bigint           not null, primary key
#  name          :string
#  prereq_id     :integer
#  instructor_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Course < ApplicationRecord
    has_many :enrollments,
        class_name: :Enrollment, #on other end of association
        foreign_key: :course_id, #always referring to the column on the table that "belongs_to"
        primary_key: :id #primary_key is always 

    belongs_to :prerequisite,
        class_name: :Course, #on other end of association
        foreign_key: :prereq_id, #always referring to the column on the table that "belongs_to"
        primary_key: :id #primary_key is always 

    belongs_to :instructor,
        class_name: :User, #on other end of association
        foreign_key: :instructor_id, #always referring to the column on the table that "belongs_to"
        primary_key: :id #primary_key is always 

    has_many :enrollment_students,
        through: :enrollments, #on other end of association
        source: :users #primary_key is always 
end
