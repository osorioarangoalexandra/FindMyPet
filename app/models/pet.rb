class Pet < ApplicationRecord
    # belongs_to :owner, class_name: "User", foreign_key: :user_id
    belongs_to :user
    has_one_attached :image
    has_many :reports
end