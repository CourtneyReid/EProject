# frozen_string_literal: true

class Status < ApplicationRecord
  has_many :teddybears

  validates :name, :description, presence: true
end
