# frozen_string_literal: true

class ContactForm
  include ActiveModel::Model
  validates :name, :phone_number, presence: true
  attr_accessor :name, :phone_number

  def save
    if valid?
      individual = Individual.new(name: name, phone_number: phone_number)
      individual.save
      return true
    end
    false
  end
end
