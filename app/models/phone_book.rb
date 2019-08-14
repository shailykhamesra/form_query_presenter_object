# frozen_string_literal: true

class PhoneBook < ApplicationRecord
  belongs_to :individual
  delegate :phone_number, to: :individual, prefix: true
end
