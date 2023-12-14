class Copy < ApplicationRecord
    has_many :borrowings
    belongs_to :book
end
