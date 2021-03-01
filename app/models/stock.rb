class Stock < ApplicationRecord
    validates :name, presence: true, length: { maximum: 8 }
    validates :amount, length: { maximum: 255 }, allow_blank: true, numericality: {only_integer: true}
    validates :price, length: { maximum: 255 }, allow_blank: true, numericality: {only_integer: true}
end
