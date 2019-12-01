# frozen_string_literal: true

class Colour < ApplicationRecord
  has_many :teddy_bears

  validates :name, presence: true
end
