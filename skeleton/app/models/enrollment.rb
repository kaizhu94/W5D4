# == Schema Information
#
# Table name: enrollments
#
#  id         :bigint           not null, primary key
#  course_id  :integer
#  student_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Enrollment < ApplicationRecord

    # belongs_to :course,
    #   class_name: :Course, #on other end of association
    #   foreign_key: :foreign_key_column, #always referring to the column on the table that "belongs_to"
    #   primary_key: :id #primary_key is always referring to the table that "has many"

    belongs_to :course,
        class_name: :Course, #on other end of association
        foreign_key: :course_id, #always referring to the column on the table that "belongs_to"
        primary_key: :id #primary_key is always 

    belongs_to :user,
        class_name: :User, #on other end of association
        foreign_key: :student_id, #always referring to the column on the table that "belongs_to"
        primary_key: :id #primary_key is always 
end
