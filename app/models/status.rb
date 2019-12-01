# frozen_string_literal: true

class Status < ApplicationRecord
  has_many :teddy_bears

  validates :name, :description, presence: true
end
