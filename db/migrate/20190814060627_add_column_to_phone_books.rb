# frozen_string_literal: true

class AddColumnToPhoneBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :phone_books, :individual_id, :integer
  end
end
