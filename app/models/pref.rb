# frozen_string_literal: true

class Pref < ApplicationRecord
  has_many :users
  has_many :mentors

  validates :name, presence: true
end
