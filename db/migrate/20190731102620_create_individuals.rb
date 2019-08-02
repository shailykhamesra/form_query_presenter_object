# frozen_string_literal: true

class CreateIndividuals < ActiveRecord::Migration[5.1]
  def change
    create_table :individuals do |t|
      t.string :name
      t.integer :age
      t.string :phone_number

      t.timestamps
    end
  end
end
