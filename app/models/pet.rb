class Pet < ApplicationRecord
    belongs_to :onwer
    has_one_attached :image
end