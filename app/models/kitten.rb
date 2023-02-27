class Kitten < ApplicationRecord
  validates :name, length: { in: 3..10 }, presence: true
  validates :age, presence: true
  validates :cuteness, presence: true
  validates :softness, presence: true

end
