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
    respond_to do |format|
      if @form.save
        format.json { render json: { individual: IndividualPresenter.new(@form)._show }, status: :ok }
        format.html { redirect_to new_individual_path, flash: { notice: 'Individual contact saved' } }
      end
      format.json { render json: { error: @form.errors.full_messages.first }, status: :unprocessable_entity }
      format.html { render :new }
    end
  end

  def show
    @individuals = Individual.all
    @individuals = IndividualFacade.new(@individuals)
  end

  private

  def contact_form_params
    params.require(:contact_form).permit(:name, :phone_number)
  end

  def individuals_scope
    IndividualsQuery.new.name_prefix_query(Individual.all)
  end
end
