# frozen_string_literal: true

class Size < ApplicationRecord
  validates :name, :description, presence: true
end
