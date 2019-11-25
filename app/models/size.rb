# frozen_string_literal: true

class Size < ApplicationRecord
  has_many :teddybears

  validates :name, :description, presence: true
end
