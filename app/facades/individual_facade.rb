# frozen_string_literal: true

class IndividualFacade
  attr_reader :individuals

  def initialize(individuals)
    @individuals = individuals
  end

  def recent_contacts
    @individuals = @individuals.last(5)
  end
end
