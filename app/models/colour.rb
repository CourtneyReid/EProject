# frozen_string_literal: true

class Colour < ApplicationRecord
  has_many :teddybears

  validates :name, presence: true
end
