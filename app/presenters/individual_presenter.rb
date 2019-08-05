# frozen_string_literal: true

class IndividualPresenter < BasePresenter
  def _show
    {
      name: @resource.name,
      phone_number: @resource.phone_number
    }
  end
end
