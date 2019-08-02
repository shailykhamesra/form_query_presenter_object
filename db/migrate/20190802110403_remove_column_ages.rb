# frozen_string_literal: true

class RemoveColumnAges < ActiveRecord::Migration[5.2]
  def change
    remove_column :individuals, :age
  end
end
