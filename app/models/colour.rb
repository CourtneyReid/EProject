# frozen_string_literal: true

class Colour < ApplicationRecord
  validates :name, :description, presence: true
end
