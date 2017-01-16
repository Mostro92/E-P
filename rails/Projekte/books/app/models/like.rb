class Like < ApplicationRecord
  belongs_to :book


QUALITY_OPTIONS = [
  	1,
  	2,
  	3,
  	4,
  	5,
  	6
  ]

  validates :quality, inclusion: { in: QUALITY_OPTIONS }

end
