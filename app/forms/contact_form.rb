# frozen_string_literal: true

class ContactForm
  include ActiveModel::Model
  validates :name, :phone_number, presence: true
  attr_accessor :name, :phone_number

  def save
    if valid?
      individual = Individual.new(individual_params)
      individual.save
      return true
    end
    false
  end

  private

  def individual_params
    { name: name, phone_number: phone_number }
  end
end
