# frozen_string_literal: true

class TeddyBearColour < ApplicationRecord
  belongs_to :teddy_bear
  belongs_to :colour

  validates :teddy_bear, :colour, presence: true, allow_blank: false
end
