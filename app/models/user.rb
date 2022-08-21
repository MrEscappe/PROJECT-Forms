# frozen_string_literal: true

class User < ApplicationRecord
  validates :username, length: { in: 3..12 }, presence: true, iniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 4..18 }
end
