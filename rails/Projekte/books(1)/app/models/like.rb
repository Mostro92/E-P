class Like < ApplicationRecord

belongs_to :book

HOW_HEARD_OPTIONS = [
  	1...5
  ]

  validates :how_heard, inclusion: { in: HOW_HEARD_OPTIONS }
end