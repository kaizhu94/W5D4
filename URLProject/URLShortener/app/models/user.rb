# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  email      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true

    has_many :urls,
      class_name: :ShortenUrl, #on other end of association
      foreign_key: :user_id,
      primary_key: :id
end
