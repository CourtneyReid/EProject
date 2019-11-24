# frozen_string_literal: true

class Status < ApplicationRecord
  validates :name, :description, presence: true
end
