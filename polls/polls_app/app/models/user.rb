# == Schema Information
#
# Table name: users
#
#  id   :bigint           not null, primary key
#  name :string           not null
#
class User < ApplicationRecord
    validates :name, presence: true, uniqueness: true

    has_many :authored_polls,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :Poll

    has_many :responses,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :Response

end