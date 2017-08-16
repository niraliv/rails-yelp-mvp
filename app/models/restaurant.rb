class Restaurant < ApplicationRecord
  validates :stars, inclusion: { in: [1,2,3] }
  validates :category, inclusion: { in: ["chinese","italian","french","belgian","japanese"], allow_nil: false }
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  has_many :reviews, dependent: :destroy
end

#
