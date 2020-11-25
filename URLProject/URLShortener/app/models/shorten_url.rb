# == Schema Information
#
# Table name: shorten_urls
#
#  id         :bigint           not null, primary key
#  long_url   :string           not null
#  short_url  :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ShortenUrl < ApplicationRecord

    validates :short_url, uniqueness: true
    validates :long_url, presence: true

    belongs_to :user,
        class_name: :User, #on other end of association
        foreign_key: :user_id, #always referring to the column on the table that "belongs_to"
        primary_key: :id #primary_key is always referring to the table that "has many"
end
