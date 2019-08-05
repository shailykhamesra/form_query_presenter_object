# frozen_string_literal: true

class IndividualsQuery
  def name_prefix_query(relation)
    relation.where('name LIKE ?', "#{Settings.prefix}%")
  end
end
