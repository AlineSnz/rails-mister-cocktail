class Ingredient < ApplicationRecord
  has_many :doses, dependent: :destroy, :dependent => :delete_all
  validates :name, presence: true, allow_blank: false, uniqueness: true
end
