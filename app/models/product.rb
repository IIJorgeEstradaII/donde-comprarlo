class Product < ApplicationRecord
    has_many :offers, dependent: :destroy
end
