# frozen_string_literal: true

class CreatePhoneBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :phone_books do |t|
      t.string :phone_number
    end
  end
end
