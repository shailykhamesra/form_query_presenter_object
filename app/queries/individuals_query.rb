# frozen_string_literal: true

class IndividualsQuery
  def name_length(relation)
    relation.where('name LIKE ?', "#{Settings.prefix}%")
  end
end
