# frozen_string_literal: true

class IndividualsController < ApplicationController
  def new
    @form = ContactForm.new
  end

  def index
    @individuals = individuals_scope
    render json: { individuals: @individuals }, status: :ok
  end

  def create
    @form = ContactForm.new(contact_form_params)
    redirect_to new_individual_path, flash: { notice: 'Individual contact saved' } and return if @form.save
    render :new
  end

  private

  def contact_form_params
    params.require(:contact_form).permit(:name, :phone_number)
  end

  def individuals_scope
    IndividualsQuery.new.name_length(Individual.all)
  end
end
