# frozen_string_literal: true

class TeddyBearColour < ApplicationRecord
  belongs_to :teddybear
  belongs_to :colour

  validates :teddybear, :colour, presence: true, allow_blank: false
end
